<div class="white-box">
    <div class="row">
        <div class="col-sm-6">
            <h4 class="box-title"><?= $title ?></h4>
        </div>
        <div class="col-sm-6">
            <ul class="list-inline pull-right">
                <li>
                    <div class="card-tools">
                        <a href="<?= site_url('admin/employees/create') ?>"
                            class="fcbtn btn btn-outline btn-primary btn-1d btn-xs btn-rounded">
                            <i class="fa fa-plus"></i>
                            Employee
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="switchery-demo m-b-30">
    </div>
    <div class="table-responsive m-t-30">
        <table class="display nowrap color-table info-table" cellspacing="0" width="100%" id="empTable">
            <thead>
                <tr>
                    <th>Fullname</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Contact</th>
                    <th>Position</th>
                    <th>Division</th>
                    <th class="noPrint">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php if (!empty($employee)) : ?>
                <?php foreach ($employee as $row) : ?>
                <tr>
                    <td>
                        <?php if (!empty($row->avatar)) : ?>
                        <img width='30' height='30' class='img-circle' alt='user'
                            src='<?= site_url() ?>assets/uploads/<?= $row->avatar ?>'>
                        <?php else : ?>
                        <img width='30' height='30' class='img-circle' alt='user'
                            src='<?= site_url() ?>assets/img/person.png' />
                        <?php endif ?>
                        <?= ucwords($row->prefix.' '.$row->firstname.' '.$row->middlename[0].'. '.$row->lastname.' '.$row->suffix) ?>
                    </td>
                    <td><?= $row->address.' '.$row->barangay.' '.$row->town.' '.$row->province ?></td>
                    <td><?= $row->email ?></td>
                    <td><?= $row->contact ?></td>
                    <td><?= $row->position ?></td>
                    <td><?= $row->division ?></td>
                    </td>
                    <td class="text-nowrap noPrint">
                        <a type="button" href="<?= site_url('admin/employee/edit/') . $row->id ?>" data-toggle="tooltip"
                            title="Edit Employee"> <i class="fa fa-pencil text-inverse m-r-10"></i> </a>

                        <?php if ($this->ion_auth->is_admin()) : ?>
                        <a href="<?= site_url('employee/delete/') . $row->id ?>"
                            onclick="return confirm('Are you sure you want to delete this employee?');"
                            data-toggle="tooltip" data-original-title="Remove"> <i class="fa fa-close text-danger"></i>
                        </a>
                        <?php endif ?>
                    </td>
                </tr>

                <?php endforeach ?>
                <?php endif ?>
            </tbody>
        </table>
    </div>
</div>