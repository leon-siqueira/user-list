import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="turbo-modal"
export default class extends Controller {

  static targets = ["modal", "window"]

  hideModal() {
    this.modalTarget.parentElement.removeAttribute("src") // it might be nice to also remove the modal SRC
    this.modalTarget.remove()
  }

  closeWithKeyboard(e) {
    if (e.code == "Escape") {
      this.hideModal()
    }
  }

  closeBackground(e) {
    if (e && this.windowTarget.contains(e.target)) {
      return
    }
    this.hideModal()
  }
}
