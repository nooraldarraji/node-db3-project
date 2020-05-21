const knex = require('knex')

const knexFile = require('../knexfile')

const enviorment = process.env.DB_ENV || 'development'

module.exports = knex(knexFile[enviorment])
