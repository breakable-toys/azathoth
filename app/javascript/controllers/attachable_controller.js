import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="attachable"
export default class extends Controller {
  static targets = ["cta"]

  attach() {
    console.log("attach")
  }
}
