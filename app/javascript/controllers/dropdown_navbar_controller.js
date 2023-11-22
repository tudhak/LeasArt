import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="dropdown-navbar"
export default class extends Controller {
  static targets = ["togglableMenu"];

  connect() {
  }

  click() {
    this.togglableMenuTarget.classList.toggle("d-none");
  }
}
