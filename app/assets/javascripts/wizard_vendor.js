jQuery(document).ready(function(){
  $("#new_vendor").on("ajax:success", function(e, data, status, xhr){
    $("#new_vendor").append(xhr.responseText);
  }).on("ajax:error", function(e, xhr, status, error){
    $("#new_vendor").append("<p>ERROR</p>");
  });
});

// var FormWizard = function () {

//   return {
//     //main function to initiate the module
//     init: function () {
//       if (!jQuery().bootstrapWizard) {
//         return;
//       }

//       function format(state) {
//         if (!state.id) return state.text; // optgroup
//         return "<img class='flag' src='../../images/global/img/flags/" + state.id.toLowerCase() + ".png'/>&nbsp;&nbsp;" + state.text;
//       }

//       var form = $('#submit_form');
//       var error = $('.alert-danger', form);
//       var success = $('.alert-success', form);

//       form.validate({
//         doNotHideMessage: true, //this option enables to show the error/success messages on tab switch.
//         errorElement: 'span', //default input error message container
//         errorClass: 'help-block help-block-error', // default input error message class
//         focusInvalid: false, // do not focus the last invalid input
//         rules: {
//           //account
//           name: {
//             minlength: 5,
//             required: true
//           },
//           'payment[]': {
//             required: true,
//             minlength: 1
//           }
//         },

//         messages: { // custom messages for radio buttons and checkboxes
//           'payment[]': {
//             required: "Please select at least one option",
//             minlength: jQuery.validator.format("Please select at least one option")
//           }
//         },

//         errorPlacement: function (error, element) { // render error placement for each input type
//           if (element.attr("name") == "gender") { // for uniform radio buttons, insert the after the given container
//             error.insertAfter("#form_gender_error");
//           } else if (element.attr("name") == "payment[]") { // for uniform radio buttons, insert the after the given container
//             error.insertAfter("#form_payment_error");
//           } else {
//             error.insertAfter(element); // for other inputs, just perform default behavior
//           }
//         },

//         invalidHandler: function (event, validator) { //display error alert on form submit   
//           success.hide();
//           error.show();
//           Metronic.scrollTo(error, -200);
//         },

//         highlight: function (element) { // hightlight error inputs
//           $(element)
//             .closest('.form-group').removeClass('has-success').addClass('has-error'); // set error class to the control group
//         },

//         unhighlight: function (element) { // revert the change done by hightlight
//           $(element)
//             .closest('.form-group').removeClass('has-error'); // set error class to the control group
//         },

//         success: function (label) {
//           if (label.attr("for") == "gender" || label.attr("for") == "payment[]") { // for checkboxes and radio buttons, no need to show OK icon
//             label
//               .closest('.form-group').removeClass('has-error').addClass('has-success');
//             label.remove(); // remove error label here
//           } else { // display success icon for other inputs
//             label
//               .addClass('valid') // mark the current input as valid and display OK icon
//             .closest('.form-group').removeClass('has-error').addClass('has-success'); // set success class to the control group
//           }
//         },

//         submitHandler: function (form) {
//           // success.show();
//           // error.hide();
//           //add here some ajax code to submit your form or just call form.submit() if you want to submit the form without ajax
//           form.submit();
//         }

//       });

//       var displayConfirm = function() {
//         $('#tab2 .form-control-static', form).each(function(){
//           var input = $('[name="'+$(this).attr("data-display")+'"]', form);
//           if (input.is(":radio")) {
//             input = $('[name="'+$(this).attr("data-display")+'"]:checked', form);
//           }
//           if (input.is(":text") || input.is("textarea")) {
//             $(this).html(input.val());
//           } else if (input.is("select")) {
//             $(this).html(input.find('option:selected').text());
//           } else if (input.is(":radio") && input.is(":checked")) {
//             $(this).html(input.attr("data-title"));
//           } else if ($(this).attr("data-display") == 'payment') {
//             var payment = [];
//             $('[name="payment[]"]:checked').each(function(){
//               payment.push($(this).attr('data-title'));
//             });
//             $(this).html(payment.join("<br>"));
//           }
//         });
//       }

//       var handleTitle = function(tab, navigation, index) {
//         var total = navigation.find('li').length;
//         var current = index + 1;
//         // set wizard title
//         $('.step-title', $('#form_wizard')).text('步骤 ' + (index + 1) + ' / ' + total);
//         // set done steps
//         jQuery('li', $('#form_wizard')).removeClass("done");
//         var li_list = navigation.find('li');
//         for (var i = 0; i < index; i++) {
//           jQuery(li_list[i]).addClass("done");
//         }

//         if (current == 1) {
//           $('#form_wizard').find('.button-previous').hide();
//         } else {
//           $('#form_wizard').find('.button-previous').show();
//         }

//         if (current >= total) {
//           $('#form_wizard').find('.button-next').hide();
//           $('#form_wizard').find('.button-submit').show();
//           displayConfirm();
//         } else {
//           $('#form_wizard').find('.button-next').show();
//           $('#form_wizard').find('.button-submit').hide();
//         }
//         Metronic.scrollTo($('.page-title'));
//       }

//       // default form wizard
//       $('#form_wizard').bootstrapWizard({
//         'nextSelector': '.button-next',
//         'previousSelector': '.button-previous',
//         onTabClick: function (tab, navigation, index, clickedIndex) {
//           success.hide();
//           error.hide();
//           if (form.valid() == false) {
//             return false;
//           }
//           handleTitle(tab, navigation, clickedIndex);
//         },
//         onNext: function (tab, navigation, index) {
//           success.hide();
//           error.hide();

//           if (form.valid() == false) {
//             return false;
//           }

//           handleTitle(tab, navigation, index);
//         },
//         onPrevious: function (tab, navigation, index) {
//           success.hide();
//           error.hide();

//           handleTitle(tab, navigation, index);
//         },
//         onTabShow: function (tab, navigation, index) {
//           var total = navigation.find('li').length;
//           var current = index + 1;
//           var $percent = (current / total) * 100;
//           $('#form_wizard').find('.progress-bar').css({
//             width: $percent + '%'
//           });
//         }
//       });

//       $('#form_wizard').find('.button-previous').hide();
//       $('#form_wizard .button-submit').click(function () {

//       }).hide();
//     }

//   };

// }();