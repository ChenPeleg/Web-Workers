import { wait } from "../utils/timer";
/**
 * @class MainPage
 * @private {MainPage} _instance 
 * This page
 */


export class MainPage {

    constructor() {
        if (MainPage._instance) {

            return MainPage._instance;

        }
        this.worker = new Worker(new URL('../pwa/worker.js', import.meta.url))

        MainPage._instance = this;
    }
    render() {
        this.#renderList('hello')
        console.log('rendering');
        wait().then(() => this.postMsg('hi'))

    }
    /** @param {string} msg @returns {Promise<'OK'>} */
    postMsg(msg = "hi worker") {
        return new Promise((res, rej) => {
            //  this.worker.postMessage(msg);
            res('OK')
        })
    }
    /** @param {string[]| string} listOfArgs */
    /** @returns {void | true} */
    #renderList(listOfArgs) {
        return true
    }

}

MainPage._instance = undefined;
