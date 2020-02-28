// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------
import "bootstrap";

import { loadDynamicBannerText } from '../components/banner';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initSweetalert } from '../plugins/init_sweetalert';
import { slide } from '../components/slider';



document.addEventListener('turbolinks:load', () => {
  loadDynamicBannerText();
  initAutocomplete();
  slide();
});


const trashButtons = document.querySelectorAll('[id^="sweet-alert-trash"]');

trashButtons.forEach((trashButton) => {
  initSweetalert(`#${trashButton.id}`, {
  title: "Voulez-vous supprimer cet appartement ?",
  text: "Cette action sera irréversible",
  buttons: ["Fermer", "Supprimer"],
  dangerMode: true,
  icon: "warning"
}, (value) => {
  if (value) {
    const link = document.querySelector('#delete-link');
    link.click();
  }
});
});

