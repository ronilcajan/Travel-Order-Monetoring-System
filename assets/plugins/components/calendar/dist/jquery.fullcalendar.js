$(document).ready(function() {
    
    $('#calendar').fullCalendar({
        header: {
            left: 'prev',
            center: 'title',
            right: 'next'
        },
        firstDay: 1,
        handleWindowResize: true,
        fixedWeekCount: false,
        editable: true,
        eventColor: 'blue',
        displayEventTime: false,
        events: function(start, end, timezone, callback) {
            $.ajax({
            url: SITE_URL+'calendar/get_events',
            dataType: 'json',
            data: {
            // our hypothetical feed requires UNIX timestamps
            start: start.unix(),
            end: end.unix()
            },
            success: function(msg) {
                var events = msg.events;
                callback(events);
            }
            });
        }, 
        dayClick: function(date, jsEvent, view) {
            date_last_clicked = $(this);
            $(this).css('background-color', '#bed7f3');
            $('#addModal').modal();
        },
        eventClick: function(event, jsEvent, view) {
            $('#name').val(event.title);
            $('#description').val(event.description);

            $('#start_date').val(convertTime(event.start));
            if(event.end) {
              $('#end_date').val(convertTime(event.end));
            } else {
              $('#end_date').val(convertTime(event.start));
            }
            $('#event_id').val(event.id);
            $('#editModal').modal();
        }
    });

     function convertTime(dateTime){
        var dateVal = new Date(dateTime);
        var day = dateVal.getDate().toString().padStart(2, "0");
        var month = (1 + dateVal.getMonth()).toString().padStart(2, "0");
        var hour = dateVal.getHours().toString().padStart(2, "0");
        var minute = dateVal.getMinutes().toString().padStart(2, "0");
        var sec = dateVal.getSeconds().toString().padStart(2, "0");
        var ms = dateVal.getMilliseconds().toString().padStart(3, "0");
        var inputDate = dateVal.getFullYear() + "-" + (month) + "-" + (day) + "T" + (hour-8) + ":" + (minute) + ":" + (sec) + "." + (ms);
        return inputDate;
    }
});