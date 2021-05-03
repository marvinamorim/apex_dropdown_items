console.log("Dropdown Items Apex Plugin");
const dropdownItems = function() {
  function init() {
    console.log("Init dropdown");
    let hookId = this.action.attribute01;
    let dropdownItems = this.action.attribute02.split(',');
    let dropdownOthers = this.action.attribute03.split(',');
    console.log({hookId, dropdownItems, dropdownOthers});
    $("#main").after(`<div id="myCustomDropdown" class="dropdown-content custom"></div>`);
    let height = $("#"+hookId).outerHeight();
    let top = $("#"+hookId).offset().top + height;
    let left = $("#"+hookId).offset().left-5;
    $("#myCustomDropdown").css("top", top+"px");
    $("#myCustomDropdown").css("left", left+"px");
    dropdownItems.map(function(item){
      $(`#${item}`).addClass("custom");
      $("#myCustomDropdown").append($(`#${item}_CONTAINER`));
    });
    dropdownOthers.map(function(item){
      $(`#${item}`).addClass("custom");
      $("#myCustomDropdown").append($(`#${item}`));
    });
    $("#"+hookId).attr("onclick","dropdownItems.toggleDropdown()");
    // Close the dropdown if the user clicks outside of it
    window.onclick = function(event) {
      if (!event.target.matches('.custom')) {
        var dropdown = document.getElementById("myCustomDropdown");
        if (dropdown.classList.contains("show")) dropdown.classList.remove("show");
      }
    }
  }
  function toggleDropdown() {
    document.getElementById("myCustomDropdown").classList.toggle("show");
  }
  return {
    init,
    toggleDropdown
  }
}();