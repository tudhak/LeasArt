import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-favorite"
export default class extends Controller {
  connect() {
    console.log("Hello from toggle_controller.js")
  }

  static targets = ["togglableElement", "togglableItem"]

  fire() {
    this.togglableElementTarget.classList.toggle("d-none");
    this.togglableItemTarget.classList.toggle("d-none");
  }
}
