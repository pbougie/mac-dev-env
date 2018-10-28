(function(){
  'use strict';

  var original;

  function createFormInput() {
    var versionEl = document.querySelector('[data-version]');
    var version = versionEl.textContent;

    versionEl.innerHTML = '';
    var el = document.createElement('input');
    el.setAttribute('type', 'text');
    el.setAttribute('value', version);
    versionEl.appendChild(el);
  }

  function saveOriginalContent() {
    var contentEl = document.querySelector('[data-content]');
    original = contentEl.innerHTML;
  }

  function updateVersion() {
    var versionEl = document.querySelector('[data-version]');
    var version = versionEl.querySelector('input').value;

    var contentEl = document.querySelector('[data-content]');
    contentEl.innerHTML = original.replace(/VERSION/g, version);

    var inputEl = document.querySelector('[data-version] input');
    inputEl.value = version;
    inputEl.addEventListener('change', updateVersion);
  }

  document.addEventListener('DOMContentLoaded', function() {
    if (document.querySelector('[data-version]')) {
      createFormInput();
      saveOriginalContent();
      updateVersion();
    }
  });

})();
