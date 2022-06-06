import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "title", "name" ]
  static values = {
    url: String
  }

  updateDetails(event) {
    event.preventDefault()
    console.log(this.nameTarget.value)

  }
  editDetails() {
    let editTarget = this.titleTarget
    console.log(this.urlValue)
    fetch(this.urlValue, { headers: { "Accept": "text/plain"} } )
      .then(response => response.text())
      .then((data) => {
        editTarget.innerHTML = data
      })
  }
}
