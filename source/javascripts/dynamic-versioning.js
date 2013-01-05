var original;
function version_form() {
  var version = $("#version").text();
  $("#version").empty();
  $("#version").append('<input type="text" value="'+version+'">');
  var regex = new RegExp(version, 'g');
  original = $("section[role='main']>article").html().replace(regex, 'VERSION');
}
function update_version() {
  var version = $("#version input[type=text]").val();
  var article = $("section[role='main']>article");
  article.html(original.replace(/VERSION/g, version));
  $("#version input[type=text]").change(function(){
    update_version();
  });
}
$(document).ready(function() {
  if ($("#version").length) {
    version_form();
    update_version();
  }
});
