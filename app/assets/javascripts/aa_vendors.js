jQuery(document).ready(function(){
  $('form').on('click', '#table_regions .add_fields', function(e) {
    
    var id = $(this).closest('tr').prev('tr').find('select.model_province').data("id");

    if (id != null)
    {
      fillProvinces($("#aa_vendor_aa_regions_attributes_" + id + "_province"));

      $(this).closest('tr').prev('tr').find('select.model_province').change(function(e){
        fillCities($("#aa_vendor_aa_regions_attributes_" + id + "_province"), $("#aa_vendor_aa_regions_attributes_" + id + "_city"));
      });

      $(this).closest('tr').prev('tr').find('select.model_city').change(function(e){
        fillRegions($("#aa_vendor_aa_regions_attributes_" + id + "_province"), $("#aa_vendor_aa_regions_attributes_" + id + "_city"), $("#aa_vendor_aa_regions_attributes_" + id + "_district"));
      });
    }

    $(this).closest('tr').prev('tr').find("input[type='checkbox']").each(function(index, item){
      $(item).uniform();
    });

  });

  $('#table_regions').find('tr').each(function(index, item){
    var id = $(item).find('select.model_province').data("id");
    if(id != null)
    {
      $(item).find('select.model_province').change(function(e){
        fillCities($("#aa_vendor_aa_regions_attributes_" + id + "_province"), $("#aa_vendor_aa_regions_attributes_" + id + "_city"));
      });

      $(item).find('select.model_city').change(function(e){
        fillRegions($("#aa_vendor_aa_regions_attributes_" + id + "_province"), $("#aa_vendor_aa_regions_attributes_" + id + "_city"), $("#aa_vendor_aa_regions_attributes_" + id + "_district"));
      });
    }
  });
});