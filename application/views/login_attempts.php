<div class="white-box">
    <div class="row">
        <div class="col-sm-6">
            <h4 class="box-title"><?= $title ?></h4>
        </div>
    </div>

    <div class="table-responsive m-t-30">
        <table class="display table-hover table-striped color-table info-table" id="loginAttemptsTable">
            <thead>
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">IP Address</th>
                    <th scope="col">Username</th>
                    <th scope="col">Time</th>
                </tr>
            </thead>
            <tbody>
                <?php if (!empty($attempts)) : ?>
                <?php $no = 1;
                    foreach ($attempts as $row) : ?>
                <tr>
                    <td><?= $no ?></td>
                    <td><?= $row->ip_address ?></td>
                    <td><?= $row->login ?></td>
                    <td><?= date('F d, Y h:i A', $row->time) ?></td>
                </tr>
                <?php $no++;
                    endforeach ?>
                <?php endif ?>
            </tbody>
        </table>
    </div>
</div>