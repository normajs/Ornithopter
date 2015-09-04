Client
======

Client code is split into three distinct file types. HTML, Javascript, and CSS. Styles can be compiled from any prior language (Less, Sass, PostCSS) as long as it generates valid css. Javscript can also be written in any dialect desired (typescript, ES6, cofffeescript) as long as it generates valid js.

#### Templates vs Components

Should packages be able expose templates but can they also expose components? What would these look like? What are the use cases?

Components:

-	inputs
-	selects
-	textareas
-	forms
-	toggles
-	etc

#### CSS architecture

Each package can package any extra css needed for the template. This css will be compiled and joined into the master.min.css file and versioned (or a section file). During the build process, the **critical** css will be inlined on the page and the rest will be minfied, gziped and cached. These css trails will be audited to prevent too large of files from being included that violate the sites threshold

#### JS files (advanced functionality)

All JS should be considered non-critical for the end-user. Admin support will be required a javascript enabled browser but end-users cannot gurantee it. As much as possible, custom template actions should be bundled into a junction plugins. Each JS file per package joined and the group of files will be wrapped in a immediately invoked function to protect the global namespace. If a template exposes javascript functionality (like a model or player), the package must expose the API to Junction.
