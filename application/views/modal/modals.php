<?php
$query = $this->db->query("SELECT * FROM system_info WHERE id=1");
$info = $query->row();

$query = $this->db->query("SELECT * FROM users JOIN names ON names.user_id=users.id WHERE users.id =".$this->session->user_id);
$sess = $query->row();

$sql = $this->db->query("SELECT * FROM station WHERE id =1");
$station = $sql->row();
?>

<!-- Modal -->
<div class="modal fade" id="changepass" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="exampleModalLabel">Change Password</h5>
            </div>
            <div class="modal-body">
                <div class="alert alert-danger text-light bg-danger error-msg" style="display:none"></div>
                <form method="POST" id="change-pass-form" action="<?= site_url('auth/change_password') ?>">
                    <div class="form-group">
                        <label>Old Password:</label>
                        <input type="password" class="form-control" id="oldpass" placeholder="Enter Old Password"
                            name="old" required>
                        <span toggle="#oldpass" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                    </div>
                    <div class="form-group form-floating-label">
                        <label>New Password</label>
                        <input type="password" id="new_pass" class="form-control" placeholder="Enter New Password"
                            name="new" required>
                        <span toggle="#new_pass" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                    </div>
                    <div class="form-group form-floating-label">
                        <label>Confirm Password</label>
                        <input type="password" id="con_pass" class="form-control" placeholder="Confirm Password"
                            name="new_confirm" required>
                        <span toggle="#con_pass" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                    </div>
            </div>
            <div class="modal-footer">
                <input type="hidden" value="<?= $sess->id ?>" name="user_id">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary">Change</button>
            </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="restore" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="exampleModalLabel">Restore Database</h5>
            </div>
            <div class="modal-body">
                <form method="POST" action="<?= site_url('settings/restore') ?>" enctype="multipart/form-data">
                    <input type="hidden" name="size" value="1000000">
                    <div class="form-group form-floating-label">
                        <label>Upload Sql file</label>
                        <input type="file" id="input-file-now" accept=".sql" name="backup_file" required
                            class="dropify" />
                    </div>
                    <small class="form-text text-muted">Note: pls upload sql file only.</small>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary" id="restore-btn">Restore</button>
            </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="edit_profile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="exampleModalLabel">Update Profile</h5>
            </div>
            <div class="modal-body">
                <div class="alert alert-danger text-light bg-danger error-msg1" style="display:none"></div>
                <form method="POST" enctype="multipart/form-data" action="<?= site_url('auth/change_profile') ?>"
                    id="update-user-form">
                    <input type="hidden" name="size" value="1000000">
                    <div class="text-center m-b-30">
                        <div id="myprofile3" class="text-center">
                            <input name="avatar" accept="image/*" type="file" class="dropify" data-height="250"
                                id="input-file-now-custom-6"
                                data-default-file="<?= empty($sess->avatar) ? site_url() . 'assets/img/person.png' : site_url() . 'assets/uploads/avatar/' . $sess->avatar ?>" />
                            <input type="hidden" id="profileData"
                                value="<?= preg_match('/data:image/i', $sess->avatar ?? '') ? $sess->avatar : null ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Firstname</label>
                                <input type="text" class="form-control" placeholder="Enter Firstname" name="first_name"
                                    required value="<?= $sess->firstname ?>">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Lastname</label>
                                <input type="text" class="form-control" placeholder="Enter Lastname" name="last_name"
                                    required value="<?= $sess->lastname ?>">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Email</label>
                        <input type="email" class="form-control" placeholder="Enter Email Address" name="email" required
                            value="<?= $sess->email ?>">
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="system" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="exampleModalLabel">System Info</h5>
            </div>
            <div class="modal-body">
                <form method="POST" action="<?= site_url('settings/updateSystem') ?>" enctype="multipart/form-data"
                    id="system_info_form">
                    <input type="hidden" name="size" value="1000000">
                    <div class="alert alert-danger text-light bg-danger brgy-error-msg" style="display:none"></div>
                    <div class="form-group">
                        <label class="control-label">System Name</label>
                        <input type="text" class="form-control" placeholder="Enter System Name" name="name"
                            value="<?= empty($info->sname) ? null : $info->sname ?>">
                    </div>
                    <div class="form-group">
                        <label class="control-label">System Acronym</label>
                        <input type="text" class="form-control" placeholder="Enter System Acronym" name="acronym"
                            value="<?= empty($info->acronym) ? null : $info->acronym ?>">
                    </div>
                    <div class="form-group">
                        <label class="control-label">Powered By:</label>
                        <input type="text" class="form-control" name="powered_b"
                            value="<?= empty($info->powered_b) ? null : $info->powered_b ?>">
                    </div>
                    <div class="form-group">
                        <label class="control-label">System Logo</label><br>
                        <input name="login_bg" accept="image/*" type="file" class="dropify" data-height="250"
                            data-default-file="<?= empty($info->login_bg) ? site_url() . '/assets/uploads/images/login-register.jpg' : site_url() . 'assets/uploads/' . $info->login_bg ?>" />
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="station" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="exampleModalLabel">Station Info</h5>
            </div>
            <div class="modal-body">
                <form method="POST" action="<?= site_url('settings/station') ?>" enctype="multipart/form-data"
                    id="station_info_form">
                    <input type="hidden" name="size" value="1000000">
                    <div class="alert alert-danger text-light bg-danger brgy-error-msg" style="display:none"></div>
                    <div class="form-group">
                        <label class="control-label">Department</label>
                        <input type="text" class="form-control" placeholder="Enter department" name="department"
                            value="<?= empty($station->department) ? null : $station->department ?>">
                    </div>
                    <div class="form-group">
                        <label class="control-label">Office Name</label>
                        <input type="text" class="form-control" placeholder="Enter office name" name="office_name"
                            value="<?= empty($station->office_name) ? null : $station->office_name ?>">
                    </div>
                    <div class="form-group">
                        <label class="control-label">Office Name 2</label>
                        <input type="text" class="form-control" placeholder="Enter office name" name="office_name2"
                            value="<?= empty($station->office_name2) ? null : $station->office_name2 ?>">
                    </div>
                    <div class="form-group">
                        <label class="control-label">Office Address</label>
                        <input type="text" class="form-control" name="office_address" placeholder="Enter office address"
                            value="<?= empty($station->office_address) ? null : $station->office_address ?>">
                    </div>
                    <div class="form-group">
                        <label class="control-label">Logo </label><br>

                        <input name="logo" accept="image/png" type="file" class="dropify" data-height="250"
                            data-default-file="<?= empty($station->logo) ? site_url() . '/assets/uploads/images/login-register.jpg' : site_url() . 'assets/uploads/' . $station->logo ?>" />
                        <small><i>Note: *png file only</i></small>
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
            </form>
        </div>
    </div>
</div>