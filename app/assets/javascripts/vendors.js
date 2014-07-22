jQuery(document).ready(function(){
  $("#vendor_province").change(function(e){
    fillCities($("#vendor_province"), $("#vendor_city"));
  });

  $("#vendor_city").change(function(e){
    fillRegions($("#vendor_province"), $("#vendor_city"), $("#vendor_region"));
  });
});