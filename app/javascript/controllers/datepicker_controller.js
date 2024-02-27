import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";
import rangePlugin from "rangePlugin";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ["startDate", "endDate"];
  connect() {
    flatpickr(this.startDateTarget, {
      minDate: "today",
      plugins: [new rangePlugin({ input: this.endDateTarget })],
    });
    flatpickr(this.endDateTarget, {});
  }
}
