Sample Client
=============

*Template*

```handlebars

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

*Stylesheet*

```scss

.contact {
  background-color: #eee;
}

```

*Javascript*

```cofffeescript

class Test

  constructor: ->

    window.pluginTest = true


junction.addPlugin('test', Test, '[data-test]')

```
