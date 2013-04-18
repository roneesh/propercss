# Propercss is a rails generator that sets up your css

### DIRECTIONS:

* Create a folder called "generators" in your Rails "lib" folder.
* Clone this repo into lib/generators
* Run one of the two versions of the generate command

### THE GENERATE COMMAND: 

There are currently two versions of the generate command:

* "rails g propercss"

This commmand creates the following files and folders in ">app/assets/stylesheets":
    >app/assets/stylesheets/base
    >app/assets/stylesheets/components
    >app/assets/stylesheets/modules
    >app/assets/stylesheets/base/normalize.css
    >app/assets/stylesheets/base/layout.sass
    >app/assets/stylesheets/base/typography.sass
    >app/assets/stylesheets/components/alerts.sass
    >app/assets/stylesheets/components/buttons.sass
    >app/assets/stylesheets/components/forms.sass
    >app/assets/stylesheets/components/list.sass
    >app/assets/stylesheets/components/nav.sass
    >app/assets/stylesheets/components/tables.sass
    >app/assets/stylesheets/modules/aside.sass
    >app/assets/stylesheets/modules/footer.sass
    >app/assets/stylesheets/modules/header.sass

* "rails g propercss normalize_only"

This command creates the following files and folders in ">app/assets/stylesheets":
    >app/assets/stylesheets/base
    >app/assets/stylesheets/base/normalize.css