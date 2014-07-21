jQuery(document).ready(function() {
  $("#add_services").click(function(){
    var action = $(this).data('action');
    $('#service_content').load(action,function(result){
      $('#myModal').modal({show:true});
    });
  });
});