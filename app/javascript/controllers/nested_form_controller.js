import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "links", "template" ]

  add_association(event) {
    event.preventDefault()
    
    var content = this.templateTarget.innerHTML.replace(/TEMPLATE_RECORD/g, new Date().valueOf())
    this.linksTarget.insertAdjacentHTML('beforebegin', content)
  }
}
