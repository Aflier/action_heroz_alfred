import {Controller} from "@hotwired/stimulus"
import {Turbo} from "@hotwired/turbo-rails"

export default class extends Controller {
    static values = { path: String, controllerName: String, actionName: String, tab: String }

    initialize() {
        console.log(`HelpSlide#initialize`)
        this.element.setAttribute("data-action", "click->turbo#click")
    }

    setTab(e) {
        this.tabValue = e.params['tab']
    }

    slider(e) {
        let that = this
        let location_params = `?controller_name=${this.controllerNameValue}&action_name=${this.actionNameValue}&tab=${this.tabValue}`

        e.preventDefault()

        console.log('HelpSlider: value')
        console.log('>' + this.controllerNameValue)
        console.log('>' + this.actionNameValue)
        console.log('>' + this.tabValue)
        console.log('>' + location_params)



        this.url = this.pathValue + location_params

        fetch(this.url, {
            method: that.method,
            headers: {
                Accept: "text/vnd.turbo-stream.html",
                "X-CSRF-Token": that.csrfToken,
            }
        })
            .then(r => r.text())
            .then(html => Turbo.renderStreamMessage(html))
    }
}

