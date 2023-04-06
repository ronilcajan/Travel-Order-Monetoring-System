<div class="modal fade" id="view" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="exampleModalLabel">
                    View Travel Order</h5>
            </div>
            <div class="modal-body">
                <form method="POST" action="<?= site_url('travel_order/update') ?>" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Employee Name</label>
                                <select class="form-control" required name="user_id" id="user_id" style="width:100%"
                                    readonly>
                                    <option disabled selected>Select Employee</option>
                                    <?php foreach ($employee as $row) : ?>
                                    <option value="<?= $row->user_id ?>">
                                        <?= $row->prefix.' '.$row->firstname.' '.$row->middlename[0].'. '.$row->lastname.' '.$row->suffix ?>
                                    </option>
                                    <?php endforeach ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Application Date</label>
                                <input type="date" value="<?= date('Y-m-d') ?>" id="date_applied" readonly
                                    class="form-control" name="date_applied" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Departure Date</label>
                                <input type="date" value="<?= date('Y-m-d') ?>" id="departure_date" readonly
                                    class="form-control" name="departure_date" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Arrival Date</label>
                                <input type="date" value="<?= date('Y-m-d', strtotime('+3 days')) ?>"
                                    class="form-control" name="date_arrived" id="date_arrived" readonly required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-9">
                            <div class="form-group">
                                <label class="control-label">Destination</label>
                                <input type="text" class="form-control" id="destination" readonly
                                    placeholder="Enter Destination" name="destination" required>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label">Within Region</label>
                                <select name="within" class="form-control" id="within" readonly
                                    onchange="checkApprover_edit()">
                                    <option value="1">Yes</option>
                                    <option value="0">No</option>

                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Purpose of Travel</label>
                        <textarea name="purpose" class="form-control" cols="30" readonly id="purpose" rows="5"
                            placeholder="Enter purpose of travel"></textarea>
                    </div>

                    <div class="form-group">
                        <label class="control-label">Assistants or Laboreres Allowed</label>
                        <input type="text" class="form-control"
                            placeholder="Enter number of assistants or laboreres allowed" readonly id="assistant"
                            name="assistant">
                    </div>
                    <div class="form-group">
                        <label class="control-label">Approriate to which travel should be charged</label>
                        <input type="text" class="form-control" id="source_of_funds" readonly
                            placeholder="Enter source of funds" name="source_of_funds">
                    </div>
                    <div class="form-group">
                        <label class="control-label">Remarks or special instruction</label>
                        <textarea name="remarks" class="form-control" id="remarks" cols="30" rows="5"
                            placeholder="Enter remarks or special instruction" id="remarks" readonly></textarea>
                    </div>
            </div>
            <div class="modal-footer">
                <input type="hidden" class="form-control" id="travel_order_id" name="travel_order_id">
                <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
            </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="approveModal" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="exampleModalLabel">
                    Approve Travel Order</h5>
            </div>
            <div class="modal-body">
                <form method="POST" action="<?= site_url('request/approve') ?>" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="control-label">Travel Order No.</label>
                        <input type="text" id="travel_no" value="" readonly class="form-control" name="travel_no"
                            required>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Employee Name</label>
                        <input type="text" id="employee" value="" readonly class="form-control" name="employee"
                            required>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Approve</label>
                        <select class="form-control" id="approve" name="approve">
                            <option value="1">Yes</option>
                            <option value="2">Disapprove</option>
                        </select>
                    </div>
                    <div class="form-group" id="approve_remarks">
                        <label class="control-label">Remarks</label>
                        <input type="text" id="remarks" placeholder="Enter remarks" class="form-control" name="remarks">
                    </div>

            </div>
            <div class="modal-footer">
                <input type="hidden" class="form-control" id="travel_id" name="travel_id">
                <input type="hidden" class="form-control" id="approve_no" name="approve_no">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
            </form>
        </div>
    </div>
</div>