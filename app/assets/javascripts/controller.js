var Controller = {
  formatTimeInput: function () {
    var currentValue = View.timeInput.value
    var match = Controller.validateTime(currentValue)
    if (!match) {
      alert("Current time is not valid. ex: '12:45 pm', '3:05 am'");
    } else {
      View.timeInput.value = match
    }
  },

  formatDurationInput: function () {
    var currentValue = View.durationInput.value
    var match = Controller.validateDuration(currentValue)
    if (!match) {
      alert("Current duration is not valid. ex: '2:30' (2 hours, 30 minutes)");
    } else {
      View.durationInput.value = match
    }
  },

  validateDuration: function (value) {
    return value.match(/\d{1,2}:\d{1,2}/)
  },

  validateTime: function (value) {
    return value.match(/\d{1,2}:\d{1,2} (?:pm|am)/)
  },

  formatInitTimeOfDay: function () {
    var timeElem = document.getElementById("time-input");
    var time = timeElem.dataset.serverTime;
    var hourMinute = Controller.getHourAndMinuteFromTime(time);
    var hour = hourMinute.hour
    var minute = hourMinute.minute
    var period = (hour <= 12) ? "am" : "pm"
    var displayHour = (period == "am") ? hour : (hour - 12)
    var timeString = displayHour + ":" + minute + " " + period
    timeElem.value = timeString
  },

  formatInitDuration: function () {
    var timeElem = document.getElementById("duration-input");
    var time = timeElem.dataset.serverTime;
    var hourMinute = Controller.getHourAndMinuteFromTime(time);
    var hour = hourMinute.hour
    var minute = hourMinute.minute
    timeString = hour + ":" + minute
    timeElem.value = timeString
  },

  formatTimesFromServer: function () {
    Controller.formatInitTimeOfDay();
    Controller.formatInitDuration();
  },

  getHourAndMinuteFromTime: function (time) {
    var parseTimes = time.match(/(\d{1,2}):(\d{1,2}):(\d{1,2})/);
    var hour = parseTimes[1];
    var minute = parseTimes[2];
    return {hour: hour, minute: minute}
  }
};