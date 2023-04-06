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
                        <a href="#add_user" data-toggle="modal"
                            class="fcbtn btn btn-outline btn-primary btn-1d btn-xs btn-rounded">
                            <i class="fa fa-plus"></i>
                            User
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
                    <th scope="col">Username</th>
                    <th scope="col">Email</th>
                    <th scope="col">Contact</th>
                    <th scope="col">User Type</th>
                    <th scope="col">Created At</th>
                    <th scope="col">Last Login</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php if (!empty($users)) : ?>
                <?php 
                $no = 1;
                foreach ($users as $row) : 
                ?>
                <tr>

                    <td><?= $no ?></td>
                    <td>
                        <?php if (empty($row->avatar)) : ?>
                        <img width="30" height="30" class="img-circle" alt="user"
                            src="<?= site_url() ?>assets/img/person.png" />
                        <?php else : ?>
                        <img width="30" height="30" class="img-circle" alt="user"
                            src="<?= preg_match('/data:image/i', $row->avatar) ? $row->avatar : site_url() . 'assets/uploads/' . $row->avatar ?>" />
                        <?php endif ?>
                        <?= ucwords($row->firstname . ' ' . $row->lastname) ?>
                    </td>
                    <td><?= $row->username ?></td>
                    <td><?= $row->email ?></td>
                    <td><?= $row->contact ?></td>
                    <td>
                        <span class="label label-table label-primary">
                            <?= $row->name ?>
                        </span>
                    </td>
                    <td><?= date('M. d, Y h:i:s A', $row->created_on) ?></td>
                    <td><?= !empty($row->last_login) ? date('M. d, Y h:i:s A', $row->last_login) : null ?></td>
                    <td>
                        <?php if ($sess->id != $row->id) : ?>
                        <a href="<?= site_url('auth/delete_user/') . $row->id ?>"
                            onclick="return confirm('Are you sure you want to delete this user?');"
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
<?php $this->load->view('user/modal') ?>