/**
 * @class MainPage
 * This page
 */

export class MainPage {
    constructor() {
        if (MainPage._instance) {
            return MyClass._instance
        }
        MainPage._instance = this;
    }
    render() {
        console.log('rendering')
    }

}