const EventEmitter = require('events');
const emitter = new EventEmitter();

function sendNotifications() {
  emitter.emit('email', 'You have a new email.');
  emitter.emit('sms', 'You received a new SMS.');
  emitter.emit('push', 'Push notification received.');
}

module.exports = { emitter, sendNotifications };
