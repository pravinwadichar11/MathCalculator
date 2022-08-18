var exec = require('cordova/exec');

// module.exports.coolMethod = function (arg0, success, error) {
//     exec(success, error, 'MathCalculator', 'coolMethod', [arg0]);
// }; 

module.exports.add = function (arg0, success, error)
{
    exec(success,error, 'MathCalculator', 'add', [arg0]);
}

module.exports.substract = function (arg0, success, error)
{
    exec(success,error, 'MathCalculator', 'substract', [arg0]);
}

module.exports.read = function (arg0, success, error)
{
    exec(success,error, 'MathCalculator', 'read', [arg0]);
}

module.exports.readlocaldata = function (arg0, success, error)
{
    exec(success,error, 'MathCalculator', 'readlocaldata', [arg0]);
}

