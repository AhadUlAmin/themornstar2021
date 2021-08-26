$(document).ready(function () {

  var navo,fetchAndInserto;
  var root = "http://themornstar.com/";
  fetchAndInserto = function (href) {
    var str = href;
    var str1 = str.slice(root.length);
    var str1 = str1.slice(0,-1);

    var str11 = str1.includes("@");
    var str12 = str1.includes("+");
    var str13 = str1.includes("~");
    if (str11 === true && str12 === false && str13 === false) {
      var dataString = "user=" + str1.split("@").pop();
      $.ajax({
        url: root + "users",
        method: "GET",
        data: dataString,
        cache: false,
        success: function (data) {
          $("#page_content").html(data);
          $("#homepage").css("display", "none");
          $("#page_content").css("display", "block");
        },
      });
    } else if (str11 === false && str12 === true && str13 === false) {
      var dataString = "community=" + str1.split("+").pop();
      $.ajax({
        url: root + "communities",
        method: "GET",
        data: dataString,
        cache: false,
        success: function (data) {
          $("#page_content").html(data);
          $("#homepage").css("display", "none");
          $("#page_content").css("display", "block");
        },
      });
    } else if (str11 === false && str12 === false && str13 === true) {
      var dataString = "collection=" + str1.split("~").pop();
      $.ajax({
        url: root + "collections",
        method: "GET",
        data: dataString,
        cache: false,
        success: function (data) {
          $("#page_content").html(data);
          $("#homepage").css("display", "none");
          $("#page_content").css("display", "block");
        },
      });
    } else if (str11 === false && str12 === false && str13 === false) {

      var dataString = "publisher=" + str1.split("/").pop();
      if (str1.split("/").pop() != "") {
        $.ajax({
          url: root + str1,
          method: "GET",
          data: dataString,
          cache: false,
          success: function (data) {
            $('#page_content').html(data);
            $('#homepage').css("display", "none");
            $('#page_content').css("display", "block");

          },
        });
      }
      else if (str1.split("/").pop() === "") {
        $("#page_content").css("display", "none");
        $("#homepage").css("display", "block");
      }



    }
  };

  navo = $("nav#secondary");

  navo.on("click", "a", function (e) {
    e.preventDefault();
    var href = $(this).attr("href");
    var title = $(this).attr("title");
    history.pushState(null, title, href);
    document.title = title;
    fetchAndInserto(href);
  });

  $(window).on("popstate", function (e) {
    e.preventDefault();
    $("#page_content").css("display", "block");
    $("#homepage").css("display", "none");

    fetchAndInserto(
      window.location.protocol +
        "//" +
        window.location.host +
        window.location.pathname +
        window.location.search
    );
  });


});
