/*
 * Lots of credit to CS 61A - cs61a.org
 */
var startDate = '2019-08-28'; var endDate = '2019-12-20'

// Show the current week during the semester and the first week of class otherwise.
function calendarStartDate () {
  if (moment().isBefore(moment(endDate)) && moment().isAfter(moment(startDate))) {
    return moment()
  }
  return startDate
}

var transform = function (event) {
  event.url = null
  return event
}

var render = function (event, element, view) {
  var eventStr = ''
  if (typeof event.location !== 'undefined') {
    eventStr = '@ ' + event.location
  }

  element.append($('<div class="fc-content">').html(eventStr))

  if (event.title === undefined) {
    return false
  }

  if (event.title.toLowerCase().includes('mega')) {
    element.addClass('mega-event')
  }

  if (event.title.toLowerCase().includes('office') ||
        event.title.toLowerCase().includes('oh') ||
        event.title.toLowerCase().includes('guerrilla')
  ) {
    element.addClass('oh-event')
  }

  if (event.title.toLowerCase().includes('party')) {
    element.addClass('hw-party-event')
  }

  if (event.title.toLowerCase().includes('lec')) {
    element.addClass('lecture-event')
  }
  if (event.title.includes('Prof')) {
    element.addClass('prof-event')
  }
  if (event.description && event.description.toLowerCase().includes('instructor')) {
    element.addClass('prof-event')
  }
  if (event.title.toLowerCase().includes('mt') || event.title.toLowerCase().includes('midterm') ||
        event.title.toLowerCase().includes('review') ||
        event.title.toLowerCase().includes('final')
  ) {
    element.addClass('special-event')
  }
  if (event.title.toLowerCase().includes('section') && !event.title.toLowerCase().includes('guerrilla')) {
    return false
  }
  if (event.title.toLowerCase().includes('dsp')) {
    return false
  }
  if (event.title.toLowerCase().includes('backup')) {
    return false
  }
}

var afterRender = function (event, element, view) {
  var eventStr = ''
  if (typeof event.description !== 'undefined') {
    eventStr = event.title + '<br/>' + event.description.split('\n').join('<br/>')
  } else if (typeof event.location !== 'undefined') {
    eventStr = event.title + ' @ ' + event.location
  }
  $(element).qtip({
    content: {
      text: eventStr
    },
    position: {
      target: 'mouse',
      adjust: { mouse: false }
    },
    show: {
      solo: true,
      effect: function () {
        $(this).slideDown('fast')
      }
    },
    hide: {
      effect: function () {
        $(this).slideUp('fast')
      }
    },
    style: {
      classes: 'qtip-light'
    }
  })
}
$(document).ready(function () {
  $('#calendar').fullCalendar({
    themeSystem: 'default',
    editable: false,
    allDaySlot: false,
    defaultView: $(window).width() >= 672 ? 'agendaWeek' : 'agendaDay',
    slotEventOverlap: false,
    height: 'auto',
    minTime: '10:00:00',
    maxTime: '19:00:00',
    defaultDate: calendarStartDate(),
    eventDataTransform: transform,
    eventRender: render,
    eventAfterRender: afterRender,
    googleCalendarApiKey: 'AIzaSyBUz4hjUbuimzy5z6HU_14EKH_dm_T25x0',
    eventSources: [
      {
        // googleCalendarId: 'berkeley.edu_j05488pnabol7deipfaag1kov0@group.calendar.google.com',
        googleCalendarId: 'gk5ak4d6uut4sk0op4bugrv4sg@group.calendar.google.com',
        cache: false,
        className: 'cs188calendar'
      }
    ]
  })
})
