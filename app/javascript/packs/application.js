// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder';
import 'mapbox-gl/dist/mapbox-gl.css';

import "channels"

import { initMapbox } from '../plugins/init_mapbox';

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
})
