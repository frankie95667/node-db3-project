const knex = require('knex');
const knexConfig = require('../knexfile');
const NODE_ENV = 'development';

const db = knex(knexConfig[NODE_ENV]);

module.exports = db;