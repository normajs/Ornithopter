Package Sample
==============

#### Raw

```html
<template name="package-sample" class="test">

  <p class="foo">
    Blue text
  </p>

  <p class="bar">
    Orange text
  </p>

</template>

```

#### Compiled (pre final build)

```html
<section class="__package-sample test">

  <p class="foo">
    Blue text
  </p>

  <p class="bar">
    Orange text
  </p>

</section>
```

---

#### Raw

```css
/* dist/client/stylesheets/foo.css */
.foo {
  color: blue;
}

/* dist/client/stylesheets/bar.css */
.bar {
  color: orange;
}
```

#### Compiled (pre final build)

```css
.__package-sample.foo {
  color: blue;
}

.__package-sample.bar {
  color: orange;
}
```

---

#### Raw

```javascript

//main.js

globalVar = 1

globalFun = function(){
  console.log("called globalFun")
}

globalFun()

```

#### Compiled (pre final build)

```javascript

(function(window){

  globalVar = 1

  globalFun = function(){
    console.log("called globalFun")
  }

  globalFun()

})(this)

```
