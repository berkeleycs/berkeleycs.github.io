const duration = 200;
$(document).ready(function() {
  if (window.scrollY >= 10) {
    $("#back-to-top").show();
  }

  $("#back-to-top").click(function(event) {
    event.preventDefault();
    $("html, body").animate({ scrollTop: 0 }, duration);
    return false;
  });

  window.addEventListener("scroll", function() {
    if (window.scrollY >= 10) {
      $("#back-to-top").fadeIn(duration / 2);
    } else {
      $("#back-to-top").fadeOut(duration / 2);
    }
  });
});
