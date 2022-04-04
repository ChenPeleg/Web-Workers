
/** @typedef {Promise<any>}  Timer */
/** @typedef {number} Miliseconds */


/** @description wait is a promisified set timeout @param {Miliseconds} time */
export const wait = (time = 1000) => {
    return new Promise((resolve, reject) => {
        try {
            setTimeout(() => {
                resolve()
            }, time)

        } catch (e) {
            reject(e)
        }
    }
    )
}