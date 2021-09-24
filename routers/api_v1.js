const express = require('express');
const {v1_home ,v1_get_facts,v1_get_facts_by_id} = require('../controllers/api_v1');

const v1_route = express.Router();

v1_route.get('/',v1_home);
v1_route.get('/:anime_name',v1_get_facts);
v1_route.get('/:anime_name/:fact_id',v1_get_facts_by_id);

module.exports = v1_route 

