function editRole(that){ // when edit button is click from roles page
    id = $(that).attr('data-id');
    role = $(that).attr('data-name');
    desc = $(that).attr('data-description');
    $('#role_id').val(id);
    $('#role').val(role);
    $('#description').val(desc);
}
function editPos(that){// when edit button is click from position page
    pos = $(that).attr('data-pos');
    desc = $(that).attr('data-description');
    id = $(that).attr('data-id');

    $('#position').val(pos);
    $('#description').val(desc);
    $('#pos_id').val(id);
}
function approve(that){ // approve travel order 
    travel_id = $(that).attr('data-id');
    info =  $(that).attr('data-info');
    empo =  $(that).attr('data-empo');
    to_no =  $(that).attr('data-to');

    // if(info==1){ // hide when the final approvel click the approval modal
    //     $('#approve_remarks').show(); 
    // }else{
    //     $('#approve_remarks').hide();
    // }

    $('#travel_no').val(to_no);
    $('#approve_no').val(info);
    $('#employee').val(empo.trim());
    $('#travel_id').val(travel_id);

}
function editDivision(that){// when edit button is click from division page
    id = $(that).attr('data-id');
    division = $(that).attr('data-div');
    desc = $(that).attr('data-desc'); 
    $('#division_id').val(id);
    $('#division').val(division);
    $('#description').val(desc); 
}

function createUsername(){// when edit button is click from division page
    firstname = ($('#firstname').val()).trim();
    lastname = ($('#lastname').val()).trim();
    username = (firstname+lastname).toLowerCase();
    $('#username').val(username);
}

function alertNotif(msg,state){
    if(state=='success'){
        $(".alertSuccess").fadeToggle(350);
        $('#msg').html(msg);
    }else{
        $(".alertError").fadeToggle(350);
        $('#alertErrorMessage').html(msg);
    }
    
}

function showOfficial(that){
    if($(that).val() == 1){
        $("#official").show();
    }else{
        $("#official").hide();
    }
    
}

function load_unseen_notification(view = ''){
    $.ajax({
        url: SITE_URL+"request/fetch",
        method:"POST",
        data:{view:view},
        dataType:"json",
        success:function(data)
        {
        $('#notification-msg').html(data.notification);
        if(data.unseen_notification > 0)
        {
            $('.count').html(data.unseen_notification);
        }
        }
    });
}
load_unseen_notification();
$('#notif').click(function(){
    $('.count').html('');
    load_unseen_notification('yes');
});

setInterval(function(){
    load_unseen_notification();
}, 5000);

function convertTime(dateTime){ 
    var dateVal = new Date(dateTime);
    var day = dateVal.getDate().toString().padStart(2, "0");
    var month = (1 + dateVal.getMonth()).toString().padStart(2, "0");
    var hour = dateVal.getHours().toString().padStart(2, "0");
    var minute = dateVal.getMinutes().toString().padStart(2, "0");
    var sec = dateVal.getSeconds().toString().padStart(2, "0");
    var ms = dateVal.getMilliseconds().toString().padStart(3, "0");
    var inputDate = dateVal.getFullYear() + "-" + (month) + "-" + (day);
    return inputDate;
}