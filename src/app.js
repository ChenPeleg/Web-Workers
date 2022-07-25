import { BasicObservable, SimpleObservable } from './Observable/observable';
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
/** @type {any} */
var btn = document.querySelector("#nextbtn");
const obs = new BasicObservable();

//const simpleObs = new SimpleObservable()

const app = new App();
app.renderContent();


btn = btn ? btn : { 'onclick': null }
btn.onclick = () => {
    obs.next('clicked' + (new Date()).getMilliseconds())
}

const dummyObesrver = new SimpleObservable(observer => {
    observer.next('started')
    setTimeout(() => { observer.next('finished after 2 seconds') }, 2000)
})
dummyObesrver.subscribe((res) => {
    console.log(res)
})
obs.subscribe(res => console.log(res))

//obs.s
