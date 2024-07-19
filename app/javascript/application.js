// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
document.addEventListener('turbo:load', function() {
    var burger = document.querySelector('.navbar-toggler');
    if (burger) {
        burger.addEventListener('click', function() {
            var target = document.querySelector(burger.getAttribute('data-target'));
            if (target) {
                target.classList.toggle('collapse');
            }
        });
    }
});
