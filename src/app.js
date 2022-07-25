import { Observable } from './Observable/observable';
import { MainPage } from './page/main.page'
import './style/style.main.scss'

class App {
    constructor() {
        this.page = new MainPage();

    }
    renderContent() {
        this.page.render()
    }
}
const obs = new Observable();

const app = new App();
app.renderContent();

//obs.s
