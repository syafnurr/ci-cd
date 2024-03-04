"use strict";

var _express = _interopRequireDefault(require("express"));
function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }
var app = (0, _express["default"])();
var port = 3000;
app.get('/', function (req, res) {
  res.send("Hello, World! The current time is ".concat(new Date().toLocaleTimeString(), "."));
});
app.get('/api', function (req, res) {
  res.send("Ini adalah api dengan jam sekarang ".concat(new Date().toLocaleTimeString(), "."));
});
app.listen(port, function () {
  console.log("App listening at http://localhost:".concat(port));
});