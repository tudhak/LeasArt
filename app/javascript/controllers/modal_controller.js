import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["start", "end", "totalprice", "dayprice"]

  connect() {
  }

  click() {
    const totalPrice = this.totalpriceTarget;
    totalPrice.innerHTML = `${((Date.parse(this.endTarget.value) - Date.parse(this.startTarget.value)) / 86400000) * Number(this.daypriceTarget.value)} euros`;
    totalPrice.style.fontWeight = "bold";
  }
}
