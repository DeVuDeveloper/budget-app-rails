// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

window.addEventListener("turbolinks:load", () => {
    hideNotice();
  });
  
  function hideNotice() {
    const notification = document.querySelector('.notification')
    if (notification) {
      setInterval(function() {
        notification.classList.add('fade');
    }, 2000);
  }
}
