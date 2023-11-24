import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="categoryselector"
export default class extends Controller {
  static targets = ["categoryItem"]
  connect() {
    console.log("Hello from categoryselector_controller.js");
  }
}
