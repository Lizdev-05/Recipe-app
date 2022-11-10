import { Controller } from "@hotwired/stimulus"
import {enter, leave, toggle} from 'el-transition'

export default class extends Controller {
    static targets = ["openMobileMenu"]
    connect() {
        console.log('Header controller connected')
        this.openMobileMenuTarget.addEventListener('click', this.toggleMobileDropdownMenu)
    }

    toggleMobileDropdownMenu() {
        toggle(document.getElementById('mobile-dropdown-menu'))
    }

}
