import "bootstrap";
import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
  title: "Please confirm",
  text: "Your Booking is accepted!",
  icon: "success"
}, (value) => {
  if (value) {
    const link = document.querySelector('#sweet-alert-demo');
    link.click();
  }
});
