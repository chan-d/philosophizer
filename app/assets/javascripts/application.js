// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function(){
  $('body').on("click", ".edit_post", function(){
    var title = $(this).closest('.panel').find('p:first').text(),
     post = $(this).closest('.panel').find('p:last').text(),
     blog_id = $(this).data('id');

     $('#blogs-modal form').attr('action', '/blogs', + blog.id);
     $('#blogs-modal form').attr('data-remote', 'true');
     $('#blogs-modal form').find('input#blog_title').val(title);
     $('#blogs-modal form').find('textarea#blog_post').val(post);
     $('#blogs-modal form').prepend("<input type = 'hidden' name='_method' value='put'>");
  });

  $('#blogs-modal').on('hidden.bs.modal', function() {
    $('#blog-form-errors').addClass('hidden');
  });

});
