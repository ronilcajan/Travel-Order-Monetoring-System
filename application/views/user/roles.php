<?php $sess = $this->ion_auth->user()->row(); ?>
<div class="white-box">
    <div class="row">
        <div class="col-sm-6">
            <h4 class="box-title"><?= $title ?></h4>
        </div>
        <div class="col-sm-6">
            <ul class="list-inline pull-right">
                <li>
                    <div class="card-tools">
                        <a href="#addRole" data-toggle="modal"
                            class="fcbtn btn btn-outline btn-primary btn-1d btn-xs btn-rounded">
                            <i class="fa fa-plus"></i>
                            Role
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <div class="table-responsive m-t-30">
        <table class="display table-hover table-striped color-table info-table" id="userTable">
            <thead>
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">Name</th>
                    <th scope="col">Description</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php if (!empty($roles)) : ?>
                <?php $no = 1;
                    foreach ($roles as $row) : ?>
                <tr>
                    <td><?= $no ?></td>
                    <td><?= $row->name ?></td>
                    <td><?= $row->description ?></td>
                    <td>
                        <a href="#editRole" onclick="editRole(this)" data-toggle="modal" data-original-title="Remove"
                            data-id="<?= $row->id ?>" data-name="<?= $row->name ?>"
                            data-description="<?= $row->description ?>">
                            <i class="fa fa-pencil text-primary m-r-10"></i> </a>
                        <?php if ($sess->id != $row->id) : ?>
                        <a href="<?= site_url('roles/delete/') . $row->id ?>"
                            onclick="return confirm('Are you sure you want to delete this data?');"
                            data-toggle="tooltip" data-original-title="Remove">
                            <i class="fa fa-close text-danger"></i> </a>
                        <?php endif ?>
                    </td>

                </tr>
                <?php $no++;
                    endforeach ?>
                <?php endif ?>
            </tbody>
        </table>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="addRole" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title">Create System Roles</h5>
            </div>
            <div class="modal-body">
                <form method="POST" action="<?= site_url('roles/create') ?>">
                    <div class="form-group">
                        <label class="control-label">Role name</label>
                        <input type="text" class="form-control" placeholder="Enter role name" name="role" required>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Description</label>
                        <input type="text" class="form-control" placeholder="Enter description" name="description"
                            required>
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Create</button>
            </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="editRole" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title">Edit System Roles</h5>
            </div>
            <div class="modal-body">
                <form method="POST" action="<?= site_url('roles/update') ?>">
                    <div class="form-group">
                        <label class="control-label">Role name</label>
                        <input type="text" class="form-control" id="role" placeholder="Enter role name" name="role"
                            required>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Description</label>
                        <input type="text" class="form-control" id="description" placeholder="Enter description"
                            name="description" required>
                    </div>
            </div>
            <div class="modal-footer">
                <input type="hidden" id="role_id" name="role_id">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
            </form>
        </div>
    </div>
</div>