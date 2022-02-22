// Modify source to log your name

const pino = require('pino')
const pretty = require('pino-pretty')
const logger = pino(pretty())

const name = "<blank>"

logger.info(`Hello from container! My name is ${name}`)