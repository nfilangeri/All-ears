// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import Rails, { $ } from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"


Rails.start()
Turbolinks.start()
ActiveStorage.start()

// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { initTopicCable} from "../channels/topic_channel";
import { initSweetalert } from '../plugins/init_sweetalert';
import "share-buttons/dist/share-buttons.js";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
document.addEventListener('turbolinks:load', () => {

  // Call your functions here, e.g:
  // initSelect2();
  initTopicCable();
  initSweetalert('#sweet-alert-demo', {
    title: "Are you sure?",
    text: "this action cannot be reverted",
    icon: "warning"
  }, (value) => {
    if (value) {
      const link = document.querySelector('#delete-link');
      link.click();
    }
  });
});


import "controllers"

