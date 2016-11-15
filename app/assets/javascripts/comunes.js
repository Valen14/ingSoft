$( document ).ready(function() {
  $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 30 // Creates a dropdown of 15 years to control year
  });

  $('.birthdate').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 30, // Creates a dropdown of 15 years to control year
    min: -36500,
    max: -6570


  });

});
