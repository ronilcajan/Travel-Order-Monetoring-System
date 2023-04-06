<div class="row colorbox-group-widget">
    <div class="col-lg-3 col-md-6 col-sm-6 info-color-box">
        <div class="white-box">
            <div class="media bg-primary">
                <div class="media-body">
                    <h3 class="info-count" id="total"><?= $employee ?><span style="font-size: 40px;"></span> <span
                            class="pull-right"><i class="fa fa-users"></i></span></h3>
                    <p class="info-text font-bold">EMPLOYEES</p>
                    <p class="info-ot font-13"><a href="<?= site_url('admin/employees') ?>" class="text-white">VIEW
                            EMPLOYEES</a></p>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 col-sm-6 info-color-box">
        <div class="white-box">
            <div class="media bg-success">
                <div class="media-body">
                    <h3 class="info-count"><?= $officials ?><span style="font-size: 40px;"></span>
                        <span class="pull-right"><i class="icon-user-following"></i></span>
                    </h3>
                    <p class="info-text font-bold">OFFICIALS</p>
                    <p class="info-ot font-13"><a href="<?= site_url('admin/officials') ?>" class="text-white">VIEW
                            OFFICIALS</a></p>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 col-sm-6 info-color-box">
        <div class="white-box">
            <div class="media bg-info">
                <div class="media-body">
                    <h3 class="info-count"><?= $users ?><span style="font-size: 40px;"></span>
                        <span class="pull-right"><i class="icon-people"></i></span>
                    </h3>
                    <p class="info-text font-bold">USERS</p>
                    <p class="info-ot font-13"><a href="<?= site_url('admin/user') ?>" class="text-white">VIEW
                            USERS</a></p>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 col-sm-6 info-color-box">
        <div class="white-box">
            <div class="media bg-warning">
                <div class="media-body">
                    <h3 class="info-count"><?= $travel_orders ?><span style="font-size: 40px;"></span> <span
                            class="pull-right"><i class="icon-docs"></i></span></h3>
                    <p class="info-text font-bold text-white">TRAVEL ORDERS</p>
                    <p class="info-ot font-13"><a href="<?= site_url('admin/travel_orders') ?>" class="text-white">VIEW
                            TRAVEL ORDER</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-8 col-lg-8 col-xs-12">
        <div class="white-box stat-widget">
            <div class="row m-b-20">
                <div class="col-md-3 col-sm-3">
                    <h4 class="box-title">Statistics</h4>
                </div>
                <ul class="list-inline text-center m-t-40">
                    <li>
                        <h5><i class="fa fa-circle text-warning m-r-5"></i>Pending</h5>
                    </li>
                    <li>
                        <h5><i class="fa fa-circle text-success m-r-5"></i>Approved</h5>
                    </li>
                    <li>
                        <h5><i class="fa fa-circle text-danger m-r-5"></i>Disapproved</h5>
                    </li>
                </ul>
            </div>
            <form id="marep-filter-form">
                <div class="form-group">
                    <div class="input-group ">
                        <span class="input-group-btn">
                            <select name="year" class="form-control">
                                <option value="">Year</option>
                                <?php 
                                        $firstYear = (int)2018; 
                                        for($i=date('Y');$i>=$firstYear;$i--)
                                        {
                                            echo '
                                                <option value='.$i.'>'.$i.'</option>
                                            ';
                                        } 
                                    ?>
                            </select>
                        </span>
                        <span class="input-group-btn">
                            <button id="filter-marep-chart-btn" class="btn btn-primary"> <i class="icon-magnifier"></i>
                                Search</button>
                        </span>
                    </div>
                </div>
            </form>
            <div class="panel panel-default">
                <div class="panel-wrapper p-b-10 collapse in " id="chart-container">
                    <div class="item" data-chart="0">
                        <div id="mychart"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="white-box order-chart-widget">
            <h4 class="box-title">Travel Order Status</h4>
            <div id="order-status-chart" style="height: 350px;"></div>
            <ul class="list-inline m-b-0 m-t-20 t-a-c">
                <li>
                    <h6 class="font-15"><i class="fa fa-circle m-r-5 text-primary"></i>Total</h6>
                </li>
                <li>
                    <h6 class="font-15"><i class="fa fa-circle m-r-5 text-success"></i>Approved</h6>
                </li>
                <li>
                    <h6 class="font-15"><i class="fa fa-circle m-r-5 text-warning"></i>Pending</h6>
                </li>
                <li>
                    <h6 class="font-15"><i class="fa fa-circle m-r-5 text-danger"></i>Disapproved</h6>
                </li>
            </ul>
        </div>
    </div>
    <div class="col-md-4 col-lg-4 col-xs-12">

        <div class="white-box order-chart-widget">
            <h4 class="box-title">Latest Activity</h4>
            <div class="table-responsive m-t-30">
                <table class="table table-responsive table-striped table-hover">
                    <thead>
                        <tr>
                            <th scope="col">Date</th>
                            <th scope="col">Activity</th>
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($history)) : ?>
                        <?php $no = 1;
                    foreach ($history as $row) : ?>
                        <tr>
                            <td><?= date('F d, Y h:i A', strtotime($row->created_at)) ?></td>
                            <td><?= $row->activity ?></td>
                            <td>
                                <?php if($row->action == 'Create'): ?>
                                <span class="label label-table label-primary">Create</span>
                                <?php endif ?>
                                <?php if($row->action == 'Update'): ?>
                                <span class="label label-table label-info">Update</span>
                                <?php endif ?>
                                <?php if($row->action == 'Delete'): ?>
                                <span class="label label-table label-danger">Delete</span>
                                <?php endif ?>
                                <?php if($row->action != 'Create' && $row->action != 'Update' && $row->action != 'Delete'): ?>
                                <span class="label label-table label-warning"><?= $row->action ?></span>
                                <?php endif ?>

                            </td>

                        </tr>
                        <?php $no++;
                    endforeach ?>
                        <?php endif ?>
                    </tbody>
                </table>
            </div>
            <a href="<?= site_url('admin/history') ?>">Show all activity...</a>
        </div>
    </div>
</div>
<input type="hidden" id="year" value="<?= !empty($_GET['year']) ? $_GET['year'] : null ?>">