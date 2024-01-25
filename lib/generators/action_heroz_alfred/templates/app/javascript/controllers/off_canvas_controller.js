import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  connect() {
    this.offCanvas = new bootstrap.Offcanvas(this.element)
    this.offCanvas.show()
  }

  disconnect() {
    this.offCanvas.hide()
  }
}