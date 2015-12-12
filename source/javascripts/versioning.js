(function(){
  'use strict';

  var original;

  function version_form() {
    var version = document.getElementById('version');
    var article = document.getElementById('article');
    var version_number = version.textContent;

    version.innerHTML = '';
    var el = document.createElement('input');
    el.setAttribute('id', 'textbox');
    el.setAttribute('type', 'text');
    el.setAttribute('value', version_number);
    version.appendChild(el);

    var regex = new RegExp(version_number, 'g');
    original = article.innerHTML.replace(regex, 'VERSION');
  }

  function update_version() {
    var textbox = document.getElementById('textbox');
    var article = document.getElementById('article');
    article.innerHTML = original.replace(/VERSION/g, textbox.value);

    var textbox = document.getElementById('textbox');
    textbox.addEventListener('change', update_version);
  }

  document.addEventListener('DOMContentLoaded', function() {
    if (document.getElementById('version')) {
      version_form();
      update_version();
    }
  });

})();
