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
    _subscription;
    next(val) {
        if (this._subscription)
            this._subscription(val)
    }
    subscribe(func) {
        this._subscription = func;
    }
}
// actually this is called a Subject in Rsjx, because it
// Has 
export class SimpleObservable {
    constructor(observerFunction) {
        this._observerFunction = observerFunction;
    }
    _subscription;
    _observerFunction;
    next(val) {
        this._subscription(val)
    }
    subscribe(func) {
        this._subscription = func;
        this._observerFunction(this)
    }

}