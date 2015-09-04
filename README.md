# Ornithopter


### MVP:

- [ ] progressively enhanced
- [ ] sub 500ms to page render
- [ ] front end editing built in
- [ ] highly themeable and customizable
- [ ] built with full suite of Venport projects
- [ ] one click deploy to modern web platforms
- [ ] server side and client side rendered
- [ ] robust package system


> This project is targeted for the average client project. A simple site of pages with minimal interactivity should be easily handled by ornithopter. This is not for big time application suites.


---

## Features


#### Client vs Server

Since Ornithopter seeks to be a single build micro-framework, packages will need both server side and client side code. Templates will need to be in a language (or use spacebars like Meteor does) that supports parsing but one that can be server side rendered.

The server will typically be for data validation and form handling on a simple level but theoretically could handle any data.


#### Section based design

Packages/Plugins will be focused on a per `<section></section>` block with client code to support the section and server code to handle data / database updates. Each section will have a connection to the data model system when being viewed by an admin / editor.


#### Front end editing

Each site will feature a powerful front end editor that is exposed when a client / admin logs into the site. This will enable a site wide editor as well as per section editing. The updates will be submitted over DDP with optmistic UI built in. It also allows for inline editing to be realtime and highly visible. (The template langauge will need to support rerendering).


#### Junction ready

Junction css framework and the reactive DOM utility library will be present and each section should use these libraries as a base. Cusom JS and CSS will be an option but will be async loaded.


#### Users

The only users will be editors / admin. The system is not going to be setup to handle users accounts with actions. For this, a more complex stack like Meteor (using Apollos) is the way to go. Creating users will be done from the admin panel.


#### Auditing

Ornithopter will maintain an active audit of the size and speed of the site as it is built. If the site goes above certain tolerances (via the admin panel, or the development process), it will not allow the changes. This is a very very opinionated design.


#### Middleware

Since Ornithopter is built on express, middleware support for external services will be easy to implement and turn on.


#### SSL always

Ornithopter will force SSL, you better have your certs in order.


#### Kubernetes ready, containers first

The pieces of Ornithopter, DB, Application, Workers will all run in containers and be ready for Guild once it is ready. It will feature thin containers that can stack tightly on a single server to keep costs low.


#### Open Source

Its the only way to build.


#### Deployments / Production

Ornithopter will be run by Norma. Like wordpress, it will allow for admins to search and install plugins during the editing process. Norma will handle the installation and registration of the package and reload the page accordingly. This will be a future development.
