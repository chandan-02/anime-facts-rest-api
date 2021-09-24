const express = require('express');
const {home} = require('../controllers/home')

const home_route = express.Router();
home_route.get('/',home);

module.exports = home_route;