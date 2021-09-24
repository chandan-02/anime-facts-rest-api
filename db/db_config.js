const Pool = require('pg').Pool;
require('dotenv').config()

const pool = new Pool({
    database:process.env.DB_DATA,
    user:process.env.DB_USER,
    localhost:process.env.DB_HOST,
    password:process.env.DB_PASSWORD,
    PORT:process.env.DB_PORT
})

module.exports = pool;