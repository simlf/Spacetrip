import flatpickr from "flatpickr"
import "flatpickr/dist/themes/dark.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr('#range_start', {
  altInput: true,
  plugins: [new rangePlugin({ input: '#range_end'})],
  minDate: 'today',
  onClose: function(selectedDates){
    const shipPrice = document.getElementById('rails-data').dataset.price
    let msDiff = selectedDates[1].getTime()-selectedDates[0].getTime();
    let daysDiff = msDiff/8.64e+7;
    document.getElementById('dynamic_price').innerHTML = shipPrice * daysDiff;
  }
})
