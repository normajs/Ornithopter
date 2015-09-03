var Express = require("express")
var Compression = require("compression")
var app = Express()



app.get("/", function(req, res){
  res.sendFile(__dirname + "/static/index.html")
})

app.use(Compression())
app.use(Express.static("static", {
  maxAge: 900000
}))


var server = app.listen(3000)
