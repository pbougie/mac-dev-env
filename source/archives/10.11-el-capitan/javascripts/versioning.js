!function(){"use strict";function e(){var e=document.getElementById("version"),t=document.getElementById("article"),d=e.textContent;e.innerHTML="";var r=document.createElement("input");r.setAttribute("id","textbox"),r.setAttribute("type","text"),r.setAttribute("value",d),e.appendChild(r);var i=new RegExp(d,"g");n=t.innerHTML.replace(i,"VERSION")}function t(){var e=document.getElementById("textbox"),d=document.getElementById("article");d.innerHTML=n.replace(/VERSION/g,e.value);var e=document.getElementById("textbox");e.addEventListener("change",t)}var n;document.addEventListener("DOMContentLoaded",function(){document.getElementById("version")&&(e(),t())})}();