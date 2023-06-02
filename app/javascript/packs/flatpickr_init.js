import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";



document.addEventListener('DOMContentLoaded', function() {
  flatpickr("#start_date_picker", {
    minDate: "tomorrow",
    maxDate: new Date().fp_incr(365),
    dateFormat: "Y-m-d"
  });

  flatpickr("#end_date_picker", {
    minDate: "tomorrow",
    maxDate: new Date().fp_incr(365),
    dateFormat: "Y-m-d"
  });
});
