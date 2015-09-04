Packages
========

Like most modern platforms, packages are the lifeblood of Ornithopter. Packages can expose client, server, and eventually worker code (or the combination of them). Client code is restricted to templates, css, raw assets (images), and javascript (or precompiled languages with a Norma file to compile them) and server and worker code can be anything but the executable files must be in javascript (node).

#### Entry point

Instead of a registration file, packages uses a naming convention to know how to be loaded. Ornithopter will look for files in a `dist` folder by the following conventions:

Client:

-	css: "./dist/client/\*\*/\*.css"
-	html: "/dist/client/\*\*/\*.html"
-	js: "/dist/client/javascript/main.js"
-	assets: "/dist/client/\*\*/\*.{!css,!html,!js}"

Server/Worker:

-	js: "/dist/server/main.js"
-	assets: "dist/server/\*\*/\*.{!css,!html,!js}"

#### Client Namespacing

CSS files should ONLY style the contents of the template. In order to ensure this, css will be rendered under the namespace of the template as `__<template-name>` class so that the component namespace does not conflict with any classes.

Assets will be packaged under a folder and urls that reference assets (in css, js, and html) will be update to reflect the final destination on the server. They will be served as cached static assets to increase speed.

Main.js one the client will be wrapped in immediately invoked function call to prevent exposure in the global namespace. Main.js will have access to the Ornithopter API and the Junction API (as well as all other window elements).

#### Server Namespacing

The main.js file on the server will be loaded into the application and executed (variables TBD). It will have access to the Ornithopter api and a server side implementation of junction?

#### Load order (Client and Server)

TBD
