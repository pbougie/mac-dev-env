// if (navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i)) {
//   var viewportmeta = document.querySelector('meta[name="viewport"]');
//   if (viewportmeta) {
//     viewportmeta.content = 'width=device-width, minimum-scale=1.0, maximum-scale=1.0';
//     document.body.addEventListener('gesturestart', function() {
//       viewportmeta.content = 'width=device-width, minimum-scale=0.25, maximum-scale=1.6';
//     }, false);
//   }
// }

(function(doc) {

  var addEvent = 'addEventListener',
      type = 'gesturestart',
      qsa = 'querySelectorAll',
      scales = [1, 1],
      meta = qsa in doc ? doc[qsa]('meta[name=viewport]') : [];

  function fix() {
    meta.content = 'width=device-width,minimum-scale=' + scales[0] + ',maximum-scale=' + scales[1];
    doc.removeEventListener(type, fix, true);
  }

  if ((meta = meta[meta.length - 1]) && addEvent in doc) {
    fix();
    scales = [.25, 1.6];
    doc[addEvent](type, fix, true);
  }

}(document));
