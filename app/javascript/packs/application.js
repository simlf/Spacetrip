import 'bootstrap';
import '../plugins/flatpickr';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

// const setDynamicPrice => {
//   const shipPrice = document.getElementById('rails-data').dataset.price;
//   let msDiff = selectedDates[1].getTime()-selectedDates[0].getTime();
//   let daysDiff = msDiff/8.64e+7;
//   document.getElementById('dynamic_price').innerHTML = shipPrice * daysDiff;
// }

// export {setDynamicPrice}
