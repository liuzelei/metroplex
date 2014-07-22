function fillProvinces(province_control){
  $.ajax({
    url: "/ajax/districts/provinces"
  }).done(function(data){
    $(province_control).empty();
    $(province_control).select2("data", null);
    $(data).each(function(index, item){
      $(province_control).append(new Option(item));
    });
    $(province_control).change();
  });
}

function fillCities(province_control, city_control){
  $.ajax({
    url: "/ajax/districts/cities?province=" + $(province_control).val()
  }).done(function(data){
    $(city_control).empty();
    $(city_control).select2("data", null);
    $(data).each(function(index, item){
      $(city_control).append(new Option(item));
    });
    $(city_control).change();
  });
}

function fillRegions(province_control, city_control, region_control){
  $.ajax({
    url: "/ajax/districts/regions?province=" + $(province_control).val() + "&city=" + $(city_control).val()
  }).done(function(data){
    $(region_control).empty();
    $(region_control).select2("data", null);
    $(data).each(function(index, item){
      $(region_control).append(new Option(item));
    });
    $(region_control).change();
  });
}