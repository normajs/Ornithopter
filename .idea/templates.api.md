```html
<template name="contact-form" class="contact">

  {{head.set}}
    <meta name="contact-form" content="{{variable}}" />
  {{/head.set}}

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
