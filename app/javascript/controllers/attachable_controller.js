import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="attachable"
export default class extends Controller {
  static values = {
    sgid: String,
    content: String
  }

  connect() {
    const editor = document.querySelector("trix-editor").editor
    const attachment = new Trix.Attachment({ content: this.contentValue, sgid: this.sgidValue })
    editor.insertAttachment(attachment)
  }
}
