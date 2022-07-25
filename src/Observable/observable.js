/**
 * A number, or a string containing a number.
 * @typedef { (res : any)=>void} Subscription
 */

/**
 * @description imitates 
 */
export class Observable {
    constructor() {

    }
    #_subject;
    /**@type {(res:any)=>void} */
    #_subscription;


    /**
     * @return {void}
     * @param {any} val 
     */
    next(val) {

    }
    /** @type {(sub: Subscription)=>void} */
    subscribe(func) {
        this.#_subscription = func;
    }

}