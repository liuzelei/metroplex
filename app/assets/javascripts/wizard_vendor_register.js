jQuery(document).ready(function(){
  $("#vendor_province").change(function(e){
    console.debug("ssssss");
    fillCities($("#vendor_province"), $("#vendor_city"));
  });

  $("#vendor_province").click(function(e){
    console.debug("ssssssssss");
  });

  $("#vendor_city").change(function(e){
    fillRegions($("#vendor_province"), $("#vendor_city"), $("#vendor_region"));
  });

  $("#province").change(function(e){
    fillCities($("#province"), $("#city"));
  });

  $("#city").change(function(e){
    fillRegions($("#province"), $("#city"), $("#region"));
  });

  $("#basic_info_form").on("ajax:success", function(e, data, status, xhr){
    if(xhr.status === 200){
      $("#basic_info_form .form-body .alert").remove();
      $("#basic_info_form .form-body").prepend(xhr.responseText);
      Metronic.runResizeHandlers();
    }else if(xhr.status === 204){
      $("#basic_info_form .form-body .alert").remove();
      $("#basic_info_form").hide();
      $("#confirm_form").show();
      Metronic.runResizeHandlers();
      setAllValues();
    }
  });

  $("#confirm_form").on("ajax:success", function(e, data, status, xhr){
    if (xhr.status === 200){
      $("#confirm_form .form-body .alert").remove();
      $("#confirm_form .form-body").prepend(xhr.responseText);
      Metronic.runResizeHandlers();
    }else if(xhr.status === 204){
      window.location.href = "/";
    }
  });

  $("#confirm_prev_button").click(function(e){
    $("#confirm_form").hide();
    $("#basic_info_form").show();
    Metronic.runResizeHandlers();
  });
});

function setAllValues(){
  $("#basic_info_form input").each(function(index, item){
    item = $(item);
    $("#confirm_form input[name='" + item.attr("name") + "']").val(item.val());
  });
  $("#basic_info_form textarea").each(function(index, item){
    item = $(item);
    $("#confirm_form textarea[name='" + item.attr("name") + "']").val(item.val());
  });
}