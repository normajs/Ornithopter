# Templates

Templates make up a good portion of the Ornithopter framework. They contain the markup and associated values to create the front end for users and the hooks for admins to edit content. Templates need to be able to be rendered on the server and dynamically rendered on the client (for admins).

#### Languages

We only need to support one langauge for templates. I'm thinking either a precompiled language like Spacebars from Meteor, or a dynamically compiled language like React. I don't love the React JSX model at all so can we compile markup into React components?


#### Data modeling

Each unique helper will be namespaced and mapped to the template. Each template will essentially expose a data model object which will be added to the overall page document in the DB. The template will initially register its data model in the DB as well so it can be used on multiple pages with different data.


#### Rendering

On build, the template will be compiled into a DOM node tree and wrapped in a `section` tag with corresponding attributes from the template tag. On the server, these models will be used to render the markup with data inserted. The build process will generate static files (or a string stored in the DB, which ever is faster [what does varnish use?]) for each page including critical css at the top of the page. Revision history will be stored in the DB up to a certain point. On the admin page, the templates will be converted to live javascript objects via a JS library (Backbone? React? etc) so that data can be manipulated.


#### Editing

When logged in as an admin / editor. The template will expose the data model to the editing API so a client can set things. It will also expose any and all settings based on the role of the user.


#### New Data Types

Each package can expose its own data type for editing if needed. These **should** all boil down to inputs though to be rendered. They can also expose size adjustments, order adjustments, and more via the front-end-editing API.


#### Setters

A small set of layout setters will be exposed via the Ornithopter object. For example `{{#ornithopter.head}}{{/ornithopter.head}}`. These will let a template use its data model to set page wide attributes. Conflict merging could get tricky here?


#### Push State

In capable browsers, Ornithopter will upscale the site after load to be a push state driven site with a client side router. Ornithopter will compress and send over all links on a given page to the app to be loaded and rendered as needed. This could also be done with prefetching links via HTTP requests and using the JS framework of choice as the rendering engine (¯\_(ツ)_/¯)
