# Templates

Templates make up a good portion of the Ornithopter framework. They contain the markup and associated values to create the front end for users and the hooks for admins to edit content. Templates need to be able to be rendered on the server and dynamically rendered on the client (for admins).

#### Languages

We only need to support one langauge for templates. I'm thinking either a precompiled language like Spacebars from Meteor, or a dynamically compiled language like React. I don't love the React JSX model at all so can we compile markup into React components?
