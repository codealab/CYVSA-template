$(document).ready(function() {
	$(".icon-select").on("click",function(){
      
      var icono = $(this).find("i").attr("class");
      
      $("#service_icon").val(icono);
      $("#icon-service").modal("hide");
      $("#icono-show").addClass(icono);
});
});