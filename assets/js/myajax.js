function editTravelOrder(that){
    let travel_id = $(that).attr('data-id');
    $.ajax({
        type: "POST",
        url: SITE_URL+"travel_order/getTravelOrder/"+travel_id,
        dataType: "json",
        processData: false,
        contentType: false,
        cache: false,
        success: function(response) {
            console.log(response.data)
            if (response.success == true) {
               
                if(response.data.departure_date!==null){
                    $('#departure_date').val(convertTime(response.data.departure_date));
                }
                if(response.data.date_arrived!==null){
                    $('#date_arrived').val(convertTime(response.data.date_arrived));
                }
               
                $('#user_id').val(response.data.user_id).trigger('change');
                $('#date_applied').val(convertTime(response.data.date_applied));
                $('#destination').val(response.data.destination);
                $('#within').val(response.data.within);
                $('#purpose').text(response.data.purpose);
                $('#assistant').val(response.data.assistant);
                $('#source_of_funds').val(response.data.source_of_funds);
                $('#remarks').text(response.data.remarks);
                $('#travel_order_id').val(response.data.id);
            }else{
                alert(response.data)
            }
        }
    });
}
function checkApprover(){ //for creating travel order
    let user_id_ = $('#user_id_check').val();
    let within_region_ = $('#within_check').val();
    $.ajax({
        type: "POST",
        url: SITE_URL+"travel_order/checkApprover",
        dataType: "json",
        data: {user_id:user_id_, within_region:within_region_},
        success: function(response) {
            console.log(response.initial_approval)

            if (response.success == true) {

                $("#approver").empty();
                $("#approver").append(new Option("Select", "" ))
                $.each(response.initial_approval , function(index, val) {
                    if(index==0){
                        $("#approver").append(new Option( val.prefix+' '+val.firstname+' '+ val.middlename[0]+'. '+ val.lastname+' '+ val.suffix, val.user_id, true, true));
                    }else{
                        $("#approver").append(new Option( val.prefix+' '+val.firstname+' '+ val.middlename[0]+'. '+ val.lastname+' '+ val.suffix, val.user_id));
                    }
                    
                });

                $("#approver2").empty();
                $("#approver2").append(new Option("Select", "" ))
                $.each(response.final_approval , function(index, val) {
                    if(index==0){
                        $("#approver2").append(new Option( val.prefix+' '+val.firstname+' '+ val.middlename[0]+'. '+ val.lastname+' '+ val.suffix, val.user_id, true, true));
                    }else{
                        $("#approver2").append(new Option( val.prefix+' '+val.firstname+' '+ val.middlename[0]+'. '+ val.lastname+' '+ val.suffix, val.user_id));
                    }
                    
                });
            }else{
                alert(response.data)
            }
        }
    });
}

function checkApprover_edit(){ //for editing travel order
    let user_id = $('#user_id').val();
    let within_region = $('#within').val();
    $.ajax({
        type: "POST",
        url: SITE_URL+"travel_order/checkApprover",
        dataType: "json",
        data: {user_id:user_id, within_region:within_region},
        success: function(response) {
            console.log(response.initial_approval)

            if (response.success == true) {

                $("#edit_approver").empty();
                $("#edit_approver").append(new Option("Select", "" ))
                $.each(response.initial_approval , function(index, val) {
                    if(index==0){
                        $("#edit_approver").append(new Option( val.prefix+' '+val.firstname+' '+ val.middlename[0]+'. '+ val.lastname+' '+ val.suffix, val.user_id, true, true));
                    }else{
                        $("#edit_approver").append(new Option( val.prefix+' '+val.firstname+' '+ val.middlename[0]+'. '+ val.lastname+' '+ val.suffix, val.user_id));
                    }
                    
                });

                $("#edit_approver2").empty();
                $("#edit_approver2").append(new Option("Select", "" ))
                $.each(response.final_approval , function(index, val) {
                    if(index==0){
                        $("#edit_approver2").append(new Option( val.prefix+' '+val.firstname+' '+ val.middlename[0]+'. '+ val.lastname+' '+ val.suffix, val.user_id, true, true));
                    }else{
                        $("#edit_approver2").append(new Option( val.prefix+' '+val.firstname+' '+ val.middlename[0]+'. '+ val.lastname+' '+ val.suffix, val.user_id));
                    }
                    
                });
            }else{
                alert(response.data)
            }
        }
    });
}