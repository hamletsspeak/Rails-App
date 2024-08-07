// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
//= require jquery
//= require jquery_ujs
document.addEventListener('turbo:load', function () {
    var burger = document.querySelector('.navbar-toggler');
    if (burger) {
        burger.addEventListener('click', function () {
            var target = document.querySelector(burger.getAttribute('data-target'));
            if (target) {
                target.classList.toggle('collapse');
            }
        });
    }
});

(document).ready(function() {
    ('#menuToggle').click(function () {
        ('#sideMenu').toggleClass('show');
    });
});