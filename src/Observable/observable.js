/**
 * A number, or a string containing a number.
 * @typedef { (res : any)=>void} Subscription
 */
/**
 * A number, or a string containing a number.
 * @typedef { (observer : any)=>void} ObserverBuilder
 */
/**
 * @description imitates 
 */
export class BasicObservable {
    constructor() {

    }
    /**@type {(res:any)=>void} */
    #subscription = (res) => { };


    /**
     * @return {void}
     * @param {any} val 
     */
    next(val) {
        this.#subscription(val)
    }
    /** @type {(sub: Subscription)=>void} */
    subscribe(func) {
        this.#subscription = func;
    }

}
export class SimpleObservable {
    /** @type  {Object} observer */
    constructor(observerFunction) {
        observerFunction(this);
    }
    /**@type {(res:any)=>void} */
    #subscription = (res) => { };


    /**
     * @return {void}
     * @param {any} val 
     */
    next(val) {
        this.#subscription(val)
    }
    /** @type {(sub: Subscription)=>void} */
    subscribe(func) {
        this.#subscription = func;
    }

}