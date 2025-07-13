const { setupSubscribers } = require('../subscriber');
const { sendNotifications } = require('./publisher');

setupSubscribers();
sendNotifications();
