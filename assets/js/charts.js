
$(document).ready(function(){
    $.ajax({ 
        url:  SITE_URL+'dashboard/morris_chart',
        type: "post",  
        dataType: "json",
        success: function (response) {  
            Morris.Donut({
                element: 'order-status-chart',
                data: [{
                    label: "Total Pending",
                    value: response.pending
            
                }, {
                    label: "Total Approved",
                    value: response.approved
                }, {
                    label: "Total Disapproved",
                    value: response.disapproved
                }, {
                    label: "Total Travel Orders",
                    value: response.total
                }],
                resize: true,
                colors: ['#FFB136', '#2ecc71','#e74a25', '#0283cc']
            });
            
        },
        error: function (xhr, status, error) { 
            console.info(xhr.responseText);
        }
    });
})
$(document).ready(function(){
    var year = $('#year').val();
    $.ajax({ 
        url:  SITE_URL+'dashboard/morris_line_chart',
        type: "post", 
        data: {year:year},
        dataType: "json",
        success: function (response) {  
            console.log(response)

            Morris.Area({
                element: 'mychart',
                data: response,
                xkey: 'month',
                ykeys: ['pending_count', 'approved_count', 'disapproved_count'],
                labels: ['Pending', 'Approved', 'Disapproved'],
                lineColors: ['#FFC107', '#2FCC71', '#F44336'],
                parseTime: false,
                hideHover: true,
                resize: true
            });
        },
        error: function (xhr, status, error) { 
            console.info(xhr.responseText);
        }
    });
})
