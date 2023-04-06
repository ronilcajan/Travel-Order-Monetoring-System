<?php
$sql = $this->db->query("SELECT * FROM station WHERE id =1");
$station = $sql->row();
$query = $this->db->query("SELECT * FROM system_info");
$info = $query->row();
?>
<div class="row">
    <div class="col-md-6 col-sm-6 col-xs-6 text-left">
        <h2 class="m-0">Generate <?= ($title) ?></h2>
    </div>
    <div class="col-md-6 col-sm-6 col-xs-6 text-right m-b-10">
        <a href="#editFormat" data-toggle="modal" class="btn btn-info    btn-outline" type="button"> <span><i
                    class="fa fa-file"></i>
                Edit</span> </a>
        <button id="print" class="btn btn-danger btn-outline" type="button"> <span><i class="fa fa-print"></i>
                Print</span> </button>
    </div>
</div>
<div class="white-box ">
    <div class="printableArea p-20 p-t-5 p-b-5">
        <div class="row m-b-10 p-b-5" style=" border-bottom: 5px solid #2A8D09 !important">
            <div class="col-xs-2 text-center p-b-10">
                <img id="logo" src="<?= site_url('assets/uploads/') .$station->logo ?>" width="120" alt="">
            </div>
            <div class="col-xs-8">
                <div class="text-center p-0 p-t-20 ">
                    <p class="m-b-0"><b><?= $station->department ?></b></p>
                    <h4 class="m-b-0 m-t-0"><b><?= $station->office_name ?></b></h4>
                    <p class="m-b-0"><?= $station->office_address ?></p>
                </div>
            </div>
            <div class="col-xs-2 text-center" style="visibility:hidden;">
                <img id="logo" src="<?= site_url('assets/uploads/') .$station->logo ?>" width="120" alt="">
            </div>
        </div>
        <div class="text-center">
            <h3 class="m-b-0" style="letter-spacing: 0.3em"><b>TRAVEL ORDER</b></h3>
            <p class="m-b-0">(No.<input type="text" class="text-center font-bold" value="<?= $request->to_no ?>"
                    style="width: 200px; border: 1px solid black; border-top: none; border-left: none;border-right: none;">)
            </p>
            <small class="m-b-0 font-bold">( <?= date('F d, Y', strtotime($request->date_applied)) ?> )</small>
        </div>
        <div class="row text-left m-t-20">
            <div class="col-xs-6 m-0">
                <div class="d-inline info m-t-5">
                    <label for="input-field">Name:</label>
                    <input type="text" class="font-bold"
                        style="width: 280px; border: 1px solid black; border-top: none; border-left: none;border-right: none;"
                        value="<?= strtoupper($request->prefix.' '.$request->firstname.' '.$request->middlename[0].'. '.$request->lastname.' '.$request->suffix) ?>">
                </div>
                <div class="d-inline info m-t-5">
                    <label for="input-field">Position:</label>
                    <input type="text" class="font-bold"
                        style="width: 260px; border: 1px solid black; border-top: none; border-left: none;border-right: none;"
                        value="<?= $request->position ?>">
                </div>
                <div class="d-inline info m-t-5">
                    <label for="input-field">Departure Date:</label>
                    <input type="text" class="font-bold"
                        style="width: 210px; border: 1px solid black; border-top: none; border-left: none;border-right: none;"
                        value="<?= empty($request->departure_date) ? null : date('F d, Y', strtotime($request->departure_date)) ?>">
                </div>
                <div class="d-inline info m-t-5">
                    <label for="input-field">Destination:</label>
                    <input type="text" class="font-bold"
                        style="width: 250px; border: 1px solid black; border-top: none; border-left: none;border-right: none;"
                        value="<?= $request->destination ?>">
                </div>
            </div>
            <div class="col-xs-6 m-0">
                <div class="d-inline info m-t-5">
                    <label for="input-field">Salary(Php):</label>
                    <input type="text" class="font-bold"
                        style="width: 250px; border: 1px solid black; border-top: none; border-left: none;border-right: none;"
                        value="<?= !empty($request->salary) ? number_format($request->salary,2) : 0.00 ?>">
                </div>
                <div class="d-inline info m-t-5">
                    <label for="input-field">Div/Sec/Unit:</label>
                    <input type="text" class="font-bold"
                        style="width: 245px; border: 1px solid black; border-top: none; border-left: none;border-right: none;"
                        value="<?= $request->division ?>">
                </div>
                <div class="d-inline info m-t-5">
                    <label for="input-field">Official Station:</label>
                    <input type="text" class="font-bold"
                        style="width: 230px; border: 1px solid black; border-top: none; border-left: none;border-right: none;"
                        value="<?= $station->office_name2 ?>">
                </div>
                <div class="d-inline info m-t-5">
                    <label for="input-field">Arrival Date:</label>
                    <input type="text" class="font-bold"
                        style="width: 250px; border: 1px solid black; border-top: none; border-left: none;border-right: none;"
                        value="<?= empty($request->date_arrived) ? null : date('F d, Y', strtotime($request->date_arrived)) ?>">
                </div>
            </div>
        </div>
        <div class="d-inline m-t-20">
            <label for="input-field">Purpose of Travel:</label>
            <input type="text" value="<?= $request->purpose ?>" class="font-bold"
                style=" width: 700px;border: 1px solid black; border-top: none; border-left: none;border-right: none;">
        </div>
        <div class="d-inline m-t-15">
            <label for="input-field">Assistant or Laborers Allowed:</label>
            <input type="text" value="<?= $request->assistant ?>" class="font-bold"
                style=" width: 500px; border: 1px solid black; border-top: none; border-left: none;border-right: none;">
        </div>
        <div class="d-inline m-t-15">
            <label for="input-field">Approriate to which travel should be charged: </label>
            <input type="text" value="<?= $request->source_of_funds ?>" class="font-bold"
                style=" width: 400px;border: 1px solid black; border-top: none; border-left: none;border-right: none;">
        </div>
        <div class="d-inline m-t-5">
            <label for="input-field">Remarks or special instruction : </label>
            <input type="text" value="<?= $request->remarks ?>" class="font-bold"
                style=" width: 700px;border: 1px solid black; border-top: none; border-left: none;border-right: none;">
        </div>
        <div class="m-t-10">
            <p class="font-bold">CERTIFICATION: </p>
            <p class="font-bold" style="text-indent: 50px">
                This is to certiy that the travel is necessay and is connected with the functions of the
                official/employee
                of this Div./Sec./Unit.
            </p>
        </div>

        <div class="row text-center">
            <div class="col-xs-<?= $format->rec_approval == 1 ? 6 : 4 ?> m-0"
                style="visibility: <?= $format->rec_approval == 1 ? 'visible' : 'hidden' ?>;">
                <p class="font-bold">
                    Recommending Approval
                </p>

                <div style="position:relative;height: 40px;">
                    <?php if(!empty($initial_approval->signature)): ?>
                    <img src="<?= site_url('assets/uploads/').$initial_approval->signature ?>" width="200px" alt=""
                        style="visibility: <?= $format->rec_approval_sig == 1 ? 'visible' : 'hidden' ?>;">
                    <?php endif ?>
                </div>
                <div class="p-2 text-bottom text-center">
                    <h6 class="font-bold m-b-0">
                        <?= $initial_approval->prefix.' '.$initial_approval->firstname.' '.$initial_approval->middlename[0].'. '.$initial_approval->lastname.' '.$initial_approval->suffix ?>
                    </h6>
                    <p style="width:100%; border-top:1px black solid">
                        <?= $initial_approval->position.', '.$initial_approval->division ?></p>
                </div>
            </div>

            <div class="col-xs-<?= $format->rec_approval == 1 ? 6 : 4 ?> m-0"
                style="display: <?= $format->approval == 1 ? 'block' : 'none' ?>;">
                <p class="font-bold">
                    Approved:
                </p>
                <div style="position:relative;height: 40px;">
                    <?php if(!empty($final_approval->signature)): ?>
                    <img src="<?= site_url('assets/uploads/').$final_approval->signature ?>" width="200px" alt=""
                        style="visibility: <?= $format->approval_sig == 1 ? 'visible' : 'hidden' ?>;">
                    <?php endif ?>
                </div>
                <div class="p-2 text-bottom">
                    <h6 class="font-bold m-b-0 ">
                        <?= $final_approval->prefix.' '.$final_approval->firstname.' '.$final_approval->middlename[0].'. '.$final_approval->lastname.' '.$final_approval->suffix ?>
                    </h6>
                    <p style="width:100%; border-top:1px black solid">
                        <?= $final_approval->position ?></p>
                    </p>
                </div>
            </div>

            <!-- incase final approver is absent -->
            <div class="col-xs-<?= $format->approval == 2 && $format->rec_approval == 1 ? 6 : 4 ?> m-0"
                style="display:<?= $format->approver_absence == 1 ? 'block' : 'none' ?>">
                <p class="font-bold">
                    Approved:
                </p>
                <div class="p-2 text-bottom">
                    <h6 class="font-bold m-b-0 ">
                        <?= $final_approval->prefix.' '.$final_approval->firstname.' '.$final_approval->middlename[0].'. '.$final_approval->lastname.' '.$final_approval->suffix ?>
                    </h6>
                    <p style="width:100%; border-top:1px black solid">
                        <?= $final_approval->position ?></p>
                    </p>
                </div>
                <p class="font-bold">
                    For and in the absence of OIC PENRO
                </p>
                <div style="position:relative;height:10px;">
                    <?php if(!empty($format->for_sig)): ?>
                    <img src="<?= site_url('assets/uploads/').$format->signature ?>" width="200px" alt=""
                        style="visibility: <?= $format->for_sig == 1 ? 'visible' : 'hidden' ?>; margin-top:-10px">
                    <?php endif ?>
                </div>
                <div class="p-2 text-bottom">
                    <h6 class="font-bold m-b-0 ">
                        <?= $format->prefix.' '.$format->firstname.' '.$format->middlename[0].'. '.$format->lastname.' '.$format->suffix ?>
                    </h6>
                    <p style="width:100%; border-top:1px black solid">
                        <?= $format->position.', '.$initial_approval->division ?></p>
                    </p>
                </div>
            </div>
        </div>
        <div style="position:relative; border-top:1px solid black; margin-top:0;">
            <p class="text-center font-bold m-b-0">
                AUTHORIZATION
            </p>
            <p class="font-bold" style="text-indent: 50px">
                I hereby authorize the Account to deduct the corresponding amount of the unliquidated cash advance from
                my
                succeeding salary for my failure to liquidate this travel
                within the prescribed thirty-day period upon return to my permanent official station pursuant to item
                5.1.3
                COA Circular 97-002 dated February 10, 1997 and Sec. 16
                EO 248 dated May 29, 1995.
            </p>

            <?php if(!empty($request->emp_signature)): ?>
            <img src="<?= site_url('assets/uploads/').$request->emp_signature ?>" width="200px" alt=""
                style="visibility: <?= $format->emp_sign == 1 ? 'visible' : 'hidden' ?>; position:absolute; left:35%; top: 80px">
            <?php endif ?>

            <p class="text-center m-t-20 m-b-0" style="position:relative">
                <u class="font-bold"
                    style="font-size: 16px;"><?= strtoupper($request->prefix.' '.$request->firstname.' '.$request->middlename[0].'. '.$request->lastname.' '.$request->suffix) ?></u></br>
                <small class="text-center">NAME OF EMPLOYEE AND SIGNATURE</small>
            </p>

            <div class="text-center" style="position:absolute; right:30px; top:90px">
                <p class="font-12 m-b-0">Scan to verify</p>
                <img class="b-all" id="qrcode" src="<?= $qrCode ?>" width="140" />
            </div>

            <div style="position:absolute; margin-top: 20px;">
                <small style="font-size:8px">
                    Trave Order No.: <?= $request->to_no ?> <br>
                </small>
                <?php if($format->rec_approval == 1): ?>
                <small style="font-size:8px">
                    Recommening Approval: <br>
                </small>
                <?php endif ?>
                <small style="font-size:8px">
                    Approved:
                    <?php if($request->approve == 0): ?>
                    Pending
                    <?php endif ?>
                    <!-- approve -->
                    <?php if($request->approve == 1): ?>
                    <?= date('m/d/Y', strtotime($request->date_approved ?? '')) ?>
                    <?php endif ?>
                    <!-- disapprove -->
                    <?php if($request->approve == 2): ?>
                    <?= date('m/d/Y',
                            strtotime($request->date_approved ?? '')) ?>
                    <?php endif ?>
                    <br>
                    Powered by: <?= $info->sname ?>
                </small>

            </div>
        </div>

    </div>
</div>
<div class="modal fade" id="editFormat" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="exampleModalLabel">Edit Format</h5>
            </div>
            <div class="modal-body">
                <form method="POST" action="<?= site_url('travel_order/updateFormat') ?>" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Recommeding approval</label>
                                <select name="approver" class="form-control">
                                    <option value="1" <?= $format->rec_approval == 1 ? 'selected' : null ?>>Turn ON
                                    </option>
                                    <option value="2" <?= $format->rec_approval == 2 ? 'selected' : null ?>>Turn Off
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Recommeding approval signature</label>
                                <select name="approver_sig" class="form-control">
                                    <option value="1" <?= $format->rec_approval_sig == 1 ? 'selected' : null ?>>Turn ON
                                    </option>
                                    <option value="2" <?= $format->rec_approval_sig == 2 ? 'selected' : null ?>>Turn Off
                                    </option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Approval</label>
                                <select name="approval" class="form-control">
                                    <option value="1" <?= $format->approval == 1 ? 'selected' : null ?>>Turn ON</option>
                                    <option value="2" <?= $format->approval == 2 ? 'selected' : null ?>>Turn Off
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Approval signature</label>
                                <select name="approver_sig2" class="form-control">
                                    <option value="1" <?= $format->approval_sig == 1 ? 'selected' : null ?>>Turn ON
                                    </option>
                                    <option value="2" <?= $format->approval_sig == 2 ? 'selected' : null ?>>Turn Off
                                    </option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Employee signature</label>
                        <select name="emp_sign" class="form-control">
                            <option value="1" <?= $format->emp_sign == 1 ? 'selected' : null ?>>Turn ON
                            </option>
                            <option value="2" <?= $format->emp_sign == 2 ? 'selected' : null ?>>Turn Off
                            </option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label">OIC, PENRO Absence</label>
                        <select name="approver_absence" class="form-control" onchange="showOfficial(this)">
                            <option value="1" <?= $format->approver_absence == 1 ? 'selected' : null ?>>Turn ON</option>
                            <option value="2" <?= $format->approver_absence == 2 ? 'selected' : null ?>>Turn Off
                            </option>
                        </select>
                    </div>
                    <div style="display: <?= $format->approver_absence == 2 ? 'none' : null ?> ;">
                        <div class="form-group" id="official">
                            <label class="control-label">Official Name</label>
                            <select class="form-control select2" required name="user_id" style="width:100%"
                                id="official_id">
                                <option disabled selected>Select Official</option>
                                <?php foreach ($officials as $row) : ?>
                                <option value="<?= $row->user_id ?>"
                                    <?= $format->user_id == $row->user_id ? 'selected' : null ?>>
                                    <?= $row->prefix.' '.$row->firstname.' '.$row->middlename[0].'. '.$row->lastname.' '.$row->suffix ?>
                                </option>
                                <?php endforeach ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label">signature</label>
                            <select name="approver_sig2" class="form-control">
                                <option value="1" <?= $format->for_sig == 1 ? 'selected' : null ?>>Turn ON</option>
                                <option value="2" <?= $format->for_sig == 2 ? 'selected' : null ?>>Turn Off
                                </option>
                            </select>
                        </div>
                    </div>


            </div>
            <div class="modal-footer">
                <input type="hidden" value="<?= $request->id ?>" name="travel_order_id">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
            </form>
        </div>
    </div>
</div>