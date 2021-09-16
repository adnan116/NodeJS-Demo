const UniqueCheckError = require('../../../errors/unique.error');
const userService = require('../services/user.service');


const unique = async (req, res, next) => {
    var err = null;
    var uniqueUsername = await userService.uniqueCheckCreate('username', req.body.username);
    var uniqueMobile = await userService.uniqueCheckCreate('mobile', req.body.mobile);
    console.log(uniqueUsername)
    if(uniqueUsername > 0){
        err = new Error("Username is not unique. It already exists");
    }else if(uniqueMobile > 0){
        err = new Error("Mobile number is not unique. It already exists");
    }

    if(err){
        next(new UniqueCheckError(err.message));
    }else{
        next();  
    }
}

module.exports = {
    unique
}