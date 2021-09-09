const UniqueCheckError = require('../../../errors/unique.error');
const userService = require('../services/user.service');


const unique = async (req, res, next) => {
    var uniqueUsername = await userService.uniqueCheckCreate('username', req.body.username);
    var uniqueMobile = await userService.uniqueCheckCreate('mobile', req.body.mobile);
    if(uniqueUsername > 0){
        throw new UniqueCheckError('Username is not unique. It already exists');
    }else if(uniqueMobile > 0){
        throw new UniqueCheckError('Mobile number is not unique. It already exists');
    }
    next();
}

module.exports = {
    unique
}