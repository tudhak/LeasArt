import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["clickModal"]
  connect() {
    console.log("PTTT3")
  }

  fire() {
    this.clickModalTarget.classList.toggle("d-none");
  }
}
