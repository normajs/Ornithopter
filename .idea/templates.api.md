
# Sample Template

```html
<template name="contact-form" class="contact">

  {{#ornithopter.head}}
    <meta name="contact-form" content="{{variable}}" />
  {{/ornithopter.head}}

  <form class="push-double@lap-and-up constrain-copy">
    <fieldset>

      <legend>
        {{title}}
      </legend>


      {{#each input in inputs}}
        {{#if input.type === 'input'}}
          <div class="input">
            <input id="{{input.name}}" type="text" name="{{input.name}}" data-input>
            <label for="{{input.name}}" name="{{input.name}}">
          <div>
        {{/if}}

        {{#if input.type === 'textarea'}}
          <div class="input">
            <textarea id="{{input.name}}" name="{{input.name}}" data-input>
            </textarea>
            <label for="{{input.name}}" name="{{input.name}}">
          <div>
        {{/if}}

      {{/each}}

      <button type="submit">{{cta}}</button>

    </fieldset>
  </form>

</template>
```

### Behind the scenes

On compilation this template will be compiled into a javascript node tree. The data sets defined (`title`, `inputs`, `cta`) will be prefixed with the template name (eg. `contact-form-title`) and a lookup in the DB of the page will be done to find the content. On the server, the page will render out and include this template with data in minified markup form (if selected). Each template must have a unique name.

The `{{ornithopter.head}}{{/ornithopter.head}}` tags allow this template to add to the `<head></head>` of the document. Any inline css in a `<style></style>` tag will be stripped and moved to an async loaded css file that is namespaced to this block. Any js will be stripped and moved to an async loaded script as well.
