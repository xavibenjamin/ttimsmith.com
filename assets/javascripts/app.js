jQuery(document).ready(function($) {
  $(function() {
    var myNames = function() {
      $('.about__title').text(names[Math.floor(Math.random() * names.length)]);
    }

    myNames();

  });
});

var names = Array(
  'The Name is Smith, Tim Smith.',
  'Tim’s the Name, Don’t Wear it Out.',
  'Mi Nombre es Timoteo.',
  'Howdy! I’m Timmy Tim Tim.',
  'They Call Me Sassy BBQ.'
);
