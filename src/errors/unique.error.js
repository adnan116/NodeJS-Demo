const CustomError = require('./custom.error');

class UniqueCheckError extends CustomError {
    statusCode = 400;

    constructor(errors) {
        super("unique checking");
        this.errors = errors;
        Object.setPrototypeOf(this, UniqueCheckError.prototype);
    }

    serializeErrors() {
        const formattedErrors = {message: this.errors};
        //console.log(formattedErrors);
        return formattedErrors;
    }
}

module.exports = UniqueCheckError;