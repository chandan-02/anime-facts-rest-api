const Pool = require('pg').Pool;
require('dotenv').config()

const env = process.env.NODE_ENV || 'Dev';

let connection = {};

if (env !== 'Dev') {
    connection = {
        connectionString: process.env.DATABASE_URL,
        ssl: {
            rejectUnauthorized: false
        }
    }
} else {
    connection = {
        database: process.env.DB_DATA,
        user: process.env.DB_USER,
        localhost: process.env.DB_HOST,
        password: process.env.DB_PASSWORD,
        PORT: process.env.DB_PORT
    }
}

const pool = new Pool(connection)


module.exports = pool;