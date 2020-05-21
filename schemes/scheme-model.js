const db = require('../data/db-config')

module.exports = {
    find,
    findById,
    findSteps,
    add,
    addStep,
    update,
    remove
}

function find() {
    return db('schemes')
}

function findById(id) {
    return db('schemes')
        .where({ id })
}

function findSteps(id) {
    return db('steps')
        .where({ id })
}


function add(data) {
    return db('schemes')
        .insert(data)
}

function addStep(data, id) {
    return db('steps')
        .where({ id })
        .insert(data)
}


function update(changes, id) {
    return db('schemes')
        .update(changes)
        .where({ id })
}

function remove(id) {
    return db('schemes')
        .del()
        .where({ id })
}