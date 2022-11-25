// app/javascript/controllers/flatpickr_controller.js
import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  // Inform the controller that it has two targets in the form, which are our inputs
  static targets = [ "dateOn" ]
  static values = {
    unavailable: Array
  }

  connect() {
    flatpickr(this.dateOnTarget, {disable: this.unavailableValue, dateFormat: "Y-m-d"})
  }
}
