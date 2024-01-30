$(document).ready(function() {
    $('#flexSwitchCheckChecked').change(function() {
      if ($(this).is(':checked')) {
        $('#submit_button').click(); // Trigger form submission
      } else {
        $('#submit_button').click(); 
      }
    })
});
