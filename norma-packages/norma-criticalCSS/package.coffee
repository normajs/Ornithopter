Path = require "path"
Norma = require "normajs"
Critical = require("critical").stream

module.exports = (config, name) ->

  name or= "criticalCSS"
  opts = config.tasks[name]

  src = Path.normalize(opts.src)
  dest = Path.normalize(opts.dest)

  # EXT -------------------------------------------------------------------

  ext = ["html"]

  if opts.ext

    if typeof opts.ext is "string"
      opts.ext = [opts.ext]

    ext = ext.concat opts.ext


  extType = ext.map( (ext) ->
    return ext.replace(".", "").trim()
  )

  if extType.length > 1
    extension  = "{#{extType.join(",")}}"
  else
    extension = "#{extType.join(",")}"


  Norma.task "#{name}-compile", (cb) ->
    Norma.src([
      # src + ".#{extension}"
      "static/*.html"
      ])
      .pipe(Critical(
        base: "static/"
        inline: true
        # css: opts.css
        # src: 'index.html'
        width: 1300,
        height: 900
      ))
      .pipe Norma.dest("static")
      .on("close", ->
        cb null
      )


  # CRITICALCSS -------------------------------------------------------------

  Norma.task "#{name}", (cb) ->

    Norma.execute "#{name}-compile", ->

      Norma.emit "message", "#{name}: ✔ All done!"

      cb null

  ###

    You can specify the order this task here
    For more information about this see the Norma
    documenation site

  ###
  Norma.tasks["#{name}"].order = "post"

  # Export all of your tasks
  module.exports.tasks = Norma.tasks
