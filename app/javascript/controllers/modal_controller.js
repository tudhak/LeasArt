import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["start", "date"]

  connect() {
    console.log("Test")
    console.log(this.startTarget)
  }
}
