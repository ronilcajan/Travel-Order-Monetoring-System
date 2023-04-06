$(document).ready(function() {
    var brg_logo = document.getElementById("brg_logo");
    var logo = getBase64Image(brg_logo);
    var title = $('#title').text();

    var from = getUrlParameter('from');
    var to = getUrlParameter('to');

    $('#positionTable').DataTable({
        "lengthMenu": [[10, 25, 50, 1000000], [10, 25, 50, "All"]],
        "dom": 'Bfrtip',
        "buttons": [
            'pageLength',
        ],
    });
    $('#historyTable').DataTable({
        "lengthMenu": [[10, 25, 50, 1000000], [10, 25, 50, "All"]],
        "dom": 'Bfrtip',
        "buttons": [
            'pageLength',
        ],
    });
    $('#loginAttemptsTable').DataTable({
        "lengthMenu": [[10, 25, 50, 1000000], [10, 25, 50, "All"]],
        "dom": 'Bfrtip',
        "buttons": [
            'pageLength',
        ],
    });
    $('#divisionTable').DataTable({
        "lengthMenu": [[10, 25, 50, 1000000], [10, 25, 50, "All"]],
        "dom": 'Bfrtip',
        "buttons": [
            'pageLength',
        ],
    });
    $('#userTable').DataTable({
        "lengthMenu": [[10, 25, 50, 1000000], [10, 25, 50, "All"]],
        "dom": 'Bfrtip',
        "buttons": [
            'pageLength',
        ],
    });
    $('#requestTable').DataTable({
        "aaSorting": [],
        responsive: true,
        select: true,
        dom: 'Bfrtip',
        "lengthMenu": [[20, 25, 50, -1], [20, 25, 50, "All"]],
        buttons: [
            {
                extend: 'pdf',
                text: '<i class="icon-doc"></i> PDF',
                download: 'open',
                 
                exportOptions: {
                    columns: [ 0,1,2,3,4]
                },
                customize: function (doc) {
                    doc.content[1].table.widths = Array(doc.content[1].table.body[0].length + 1).join('*').split('');
                }
            },
            {
                extend: 'print',
                text: '<i class="icon-printer"></i> Print',
                exportOptions: {
                    columns: [ 0,1,2,3,4]
                },
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    // $(win.document.body).css( 'font-size', '10pt' ).prepend('<img src="'+brg_logo.src+'" width="60" style="position:absolute; top:10px; left:10px;" />');
                    $(win.document.body).find( 'table' ).addClass( 'compact' ).css( 'font-size', 'inherit' );
                }
            },
            'pageLength',
            {
                extend: 'colvis',
                text: 'Column Visibility',
            },
            
        ]
    });
    $('#travelTable').DataTable({
        "aaSorting": [],
        responsive: true,
        select: true,
        dom: 'Bfrtip',
        "lengthMenu": [[20, 25, 50, -1], [20, 25, 50, "All"]],
        buttons: [
            {
                extend: 'pdf',
                text: '<i class="icon-doc"></i> PDF',
                download: 'open',
                orientation: 'landscape',
                exportOptions: {
                    columns: [ 0,1,2,3,4,5,6]
                },
                customize: function (doc) {
                    doc.content[1].table.widths = Array(doc.content[1].table.body[0].length + 1).join('*').split('');
                }
            },
            {
                extend: 'print',
                text: '<i class="icon-printer"></i> Print',
                exportOptions: {
                    columns: [0,1,2,3,4,5,6]
                },
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    // $(win.document.body).css( 'font-size', '10pt' ).prepend('<img src="'+brg_logo.src+'" width="60" style="position:absolute; top:10px; left:10px;" />');
                    $(win.document.body).find( 'table' ).addClass( 'compact' ).css( 'font-size', 'inherit' );
                }
            },
            'pageLength',
            {
                extend: 'colvis',
                text: 'Column Visibility',
            },
            
        ]
    });
    $('#officialTable').DataTable({
        "aaSorting": [],
        responsive: true,
        select: true,
        dom: 'Bfrtip',
        "lengthMenu": [[20, 25, 50, -1], [20, 25, 50, "All"]],
        buttons: [
            {
                extend: 'pdf',
                text: '<i class="icon-doc"></i> PDF',
                download: 'open',
                orientation: 'landscape',
                exportOptions: {
                    columns: [ 0,1,2,3,4,5]
                },
                customize: function (doc) {
                    doc.content[1].table.widths = Array(doc.content[1].table.body[0].length + 1).join('*').split('');
                }
            },
            {
                extend: 'print',
                text: '<i class="icon-printer"></i> Print',
                exportOptions: {
                    columns: [  0,1,2,3,4,5]
                },
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    // $(win.document.body).css( 'font-size', '10pt' ).prepend('<img src="'+brg_logo.src+'" width="60" style="position:absolute; top:10px; left:10px;" />');
                    $(win.document.body).find( 'table' ).addClass( 'compact' ).css( 'font-size', 'inherit' );
                }
            },
            'pageLength',
            {
                extend: 'colvis',
                text: 'Column Visibility',
            },
            
        ]
    });
    $('#empTable').DataTable({
        "aaSorting": [],
        responsive: true,
        select: true,
        dom: 'Bfrtip',
        "lengthMenu": [[20, 25, 50, -1], [20, 25, 50, "All"]],
        buttons: [
            {
                extend: 'pdf',
                text: '<i class="icon-doc"></i> PDF',
                download: 'open',
                orientation: 'landscape',
                exportOptions: {
                    columns: [ 0,1,2,3,4,5]
                },
                customize: function (doc) {
                    doc.content[1].table.widths = Array(doc.content[1].table.body[0].length + 1).join('*').split('');
                }
            },
            {
                extend: 'print',
                text: '<i class="icon-printer"></i> Print',
                exportOptions: {
                    columns: [ 0,1,2,3,4,5]
                },
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    // $(win.document.body).css( 'font-size', '10pt' ).prepend('<img src="'+brg_logo.src+'" width="60" style="position:absolute; top:10px; left:10px;" />');
                    $(win.document.body).find( 'table' ).addClass( 'compact' ).css( 'font-size', 'inherit' );
                }
            },
            'pageLength',
            {
                extend: 'colvis',
                text: 'Column Visibility',
            },
            
        ]
    });
});
var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = window.location.search.substring(1),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
        }
    }
    return '';
};
function getBase64Image(img) {
    var canvas = document.createElement("canvas");
    canvas.width = img.width;
    canvas.height = img.height;
    var ctx = canvas.getContext("2d");
    ctx.drawImage(img, 0, 0);
    var dataURL = canvas.toDataURL("image/png");
    return dataURL.replace(/^data:image\/(png|jpg);base64,/, "");
}