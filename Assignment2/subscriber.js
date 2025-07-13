const { emitter } = require('./publisher');

function setupSubscribers() {
  emitter.on('email', (msg) => {
    console.log(`📧 Email: ${msg}`);
  });

  emitter.on('sms', (msg) => {
    console.log(`📱 SMS: ${msg}`);
  });

  emitter.on('push', (msg) => {
    console.log(`🔔 Push: ${msg}`);
  });
}

module.exports = { setupSubscribers };
