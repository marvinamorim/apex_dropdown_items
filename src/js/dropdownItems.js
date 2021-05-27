console.log("Dropdown Items Apex Plugin");
const dropdownItems = function() {
  function init() {
    console.log("Init dropdown");
    let hookId = this.action.attribute01;
    let dropdownItemsList = this.action.attribute02;
    let dropdownOthersList = this.action.attribute03;
    let dropdownItems = [], dropdownOthers = [];
    if (dropdownItemsList) dropdownItems = dropdownItemsList.split(',');
    if (dropdownOthersList) dropdownOthers = dropdownOthersList.split(',');
    console.log({hookId, dropdownItems, dropdownOthers});
    $("#main").after(`<div id="myCustomDropdown" class="dropdown-content custom"></div>`);
    let height = $("#"+hookId).outerHeight();
    let top = $("#"+hookId).offset().top-15;
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
    $("#"+hookId).find(".t-Button-label").addClass("custom");
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