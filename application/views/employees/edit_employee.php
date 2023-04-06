<div class="white-box">
    <h4 class="box-title"><?= $title ?></h4>
    <form method="POST" enctype="multipart/form-data" action="<?= site_url('employee/update') ?>">
        <input type="hidden" name="size" value="1000000">
        <div class="row m-t-30">
            <div class="col-md-4 col-sm-12">
                <div class="form-group">
                    <label class="control-label">Profile Picture</label>
                    <input name="avatar" accept="image/*" type="file" class="dropify" data-height="250"
                        data-default-file="<?= $employee->avatar ? site_url('assets/uploads/').$employee->avatar : site_url('assets/img/person.png') ?>" />
                </div>
                <div class="form-group">
                    <label class="control-label">Signature</label>
                    <input name="emp_signature" accept="image/*" type="file" class="dropify" data-height="250"
                        data-default-file="<?= $employee->emp_signature ? site_url('assets/uploads/').$employee->emp_signature : site_url('assets/img/signature.png') ?>" />
                </div>
            </div>
            <div class="col-md-8 col-sm-12">
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Prefix</label>
                            <input type="text" class="form-control" value="<?= $employee->prefix ?>"
                                placeholder="Ex. Atty.,Engr." name="prefix" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Firstname</label>
                            <input type="text" class="form-control" value="<?= $employee->firstname ?>"
                                placeholder="Enter Firstname" id="firstname" onchange="createUsername()"
                                name="firstname" required />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Middlename</label>
                            <input type="text" class="form-control" value="<?= $employee->middlename ?>"
                                placeholder="Enter Middlename" name="middlename" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Lastname</label>
                            <input type="text" class="form-control" placeholder="Enter Lastname" id="lastname"
                                onchange="createUsername()" name="lastname" value="<?= $employee->lastname ?>"
                                required />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Suffix</label>
                            <input type="text" class="form-control" placeholder="Ex. Ph.D"
                                value="<?= $employee->suffix ?>" name="suffix" />
                        </div>
                    </div>
                    <div class="col-md-4">

                        <div class="form-group">
                            <label class="control-label">Contact Number</label>
                            <input type="text" class="form-control" value="<?= $employee->contact ?>"
                                placeholder="Enter Contact Number" name="contact" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label">Email Address</label>
                    <input type="email" class="form-control" placeholder="Enter Email" value="<?= $employee->email ?>"
                        name="email" />
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Address 1</label>
                            <input type="text" class="form-control" placeholder="Enter sitio/purok"
                                value="<?= $employee->address ?>" name="address" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Barangay</label>
                            <input type="text" class="form-control" placeholder="Enter barangay"
                                value="<?= $employee->barangay ?>" name="barangay" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">City/Municipality</label>
                            <input type="text" class="form-control" placeholder="Enter City/Municipality"
                                value="<?= $employee->town ?>" name="town" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label">Province</label>
                    <input type="text" class="form-control" value="<?= $employee->province ?>"
                        placeholder="Enter Province" name="province" />
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Position</label>
                            <select class="form-control" required name="position">
                                <?php foreach ($pos as $row) : ?>
                                <?php if($row['position']=='Employee'):?>
                                <option value=" <?= $row['id'] ?>"
                                    <?= $employee->position_id==$row['id'] ? 'selected' : null ?>>
                                    <?= $row['position'] ?>
                                </option>
                                <?php endif ?>
                                <?php endforeach ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Division</label>
                            <select class="form-control" required name="division">
                                <option disabled selected>Select Division</option>
                                <?php foreach ($division as $row) : ?>
                                <option value="<?= $row->id ?>"
                                    <?= $employee->division_id==$row->id ? 'selected' : null ?>><?= $row->division ?>
                                </option>
                                <?php endforeach ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Salary(Php)</label>
                            <input type="number" step="0.05" class="form-control" value="<?= $employee->salary ?>"
                                placeholder="Enter salary" name="salary" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Username and Password</i></label>
                            <input type="text" class="form-control" value="<?= $employee->username ?>" readonly
                                placeholder="Enter" id="username" name="username" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">User Roles</label>
                            <select class="form-control" required name="roles">
                                <?php foreach ($this->ion_auth->groups()->result() as $row) : ?>
                                <?php if($row->name == 'employee') : ?>
                                <option value="<?= $row->id ?>">
                                    <?= $row->name ?></option>
                                <?php endif ?>
                                <?php endforeach ?>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-actions m-t-30 text-right">
            <input type="hidden" name="employee_id" value="<?= $employee->id ?>" />
            <button class="btn btn-success waves-effect waves-light" type="submit"> <i class="fa fa-check"></i>
                Update</button>
            <a type="button" href="<?= site_url('admin/employees') ?>"
                class="btn btn-default waves-effect waves-light">Cancel</a>
        </div>
    </form>
</div>