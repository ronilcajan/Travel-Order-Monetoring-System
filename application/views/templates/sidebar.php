<?php
$query = $this->db->query("SELECT * FROM users JOIN names ON names.user_id=users.id WHERE users.id =".$this->session->user_id);
$sess = $query->row();
$current_page = $this->uri->segment(2);
?>
<aside class="sidebar" role="navigation">
    <div class="scroll-sidebar">
        <div class="user-profile">
            <div class="dropdown user-pro-body">
                <div class="profile-image">
                    <?php if (!empty($sess->avatar)) : ?>
                    <img src="<?= preg_match('/data:image/i', $sess->avatar) ? $sess->avatar : site_url() . 'assets/uploads/avatar/' . $sess->avatar ?>"
                        alt="User Image" class="img-circle">
                    <?php else : ?>
                    <img src="<?= site_url() ?>assets/img/person.png" alt="User Image" class="img-circle">
                    <?php endif ?>
                    <a href="javascript:void(0);" class="dropdown-toggle u-dropdown text-blue" data-toggle="dropdown"
                        role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="badge badge-success">
                            <i class="fa fa-angle-down"></i>
                        </span>
                    </a>
                    <ul class="dropdown-menu animated flipInY">
                        <li><a href="#edit_profile" data-toggle="modal"><i class="fa fa-user"></i> Edit Profile</a></li>
                        <li><a href="#changepass" data-toggle="modal"><i class="icon-lock-open"></i> Change Password</a>
                        </li>
                        <li role="separator" class="divider"></li>
                        <li><a href="<?= site_url('auth/logout') ?>" class="text-danger"><i class="fa fa-power-off"></i>
                                Logout</a></li>
                    </ul>
                </div>
                <p class="profile-text m-t-15 m-b-0 font-16" style="color:#8d9498"><a href="javascript:void(0);">
                        <?= ucwords($sess->firstname.' '.$sess->lastname) ?></a></p>
                <small class="profile-text"><a href="javascript:void(0);"> <span class="user-level">
                            <?= $this->session->username ?? '' ?></a></small>
            </div>
        </div>
        <nav class="sidebar-nav">
            <ul id="side-menu" class="m-b-40">
                <li>
                    <a href="<?= site_url('admin/dashboard') ?>" aria-expanded="false"
                        class="<?= $current_page == 'dashboard' ? 'active' : null ?>">
                        <i class="icon-screen-desktop fa-fw"></i> <span class="hide-menu"> DASHBOARD</span>
                    </a>
                </li>
                <li>
                    <a href="<?= site_url('admin/request') ?>" aria-expanded="false"
                        class="<?= $current_page == 'request' ? 'active' : null ?>">
                        <i class="fa fa-file-text-o fa-fw"></i> <span class="hide-menu"> REQUEST</span>
                    </a>
                </li>
                <li>
                    <a href="<?= site_url('admin/travel_orders') ?>" aria-expanded="false"
                        class="<?= $current_page == 'travel_orders' || $current_page == 'generate_travel_order' ? 'active' : null ?>"><i
                            class="icon-docs fa-fw"></i>
                        <span class="hide-menu">TRAVEL ORDERS</span></a>
                </li>
                <li>
                    <a href="<?= site_url('admin/employees') ?>" aria-expanded="false"
                        class="<?= $current_page == 'employees' || $current_page == 'employee' ? 'active' : null ?>">
                        <i class="fa fa-users fa-fw"></i> <span class="hide-menu"> EMPLOYEES</span>
                    </a>
                </li>


                <li>
                    <a href="<?= site_url('admin/officials') ?>" aria-expanded="false"
                        class="<?= $current_page == 'officials' ? 'active' : null ?>"><i
                            class="icon-user-following fa-fw"></i> <span class="hide-menu">OFFICIALS</span></a>
                </li>

                <li>
                    <a href="<?= site_url('admin/position') ?>" aria-expanded="false"><i
                            class="fa fa-sitemap fa-fw"></i>
                        <span class="hide-menu">POSITIONS</span></a>
                </li>
                <li>
                    <a href="<?= site_url('admin/division') ?>" aria-expanded="f alse"><i
                            class="fa fa-building-o fa-fw"></i>
                        <span class="hide-menu">DIVISION</span></a>
                </li>
                <?php $group = array(10,11); // users that are not authorize to view this page
                if (!$this->ion_auth->in_group($group)): ?>
                <li>
                    <a href="<?= site_url('admin/user') ?>" aria-expanded="false"><i class="icon-people fa-fw"></i>
                        <span class="hide-menu">USERS</span></a>
                </li>
                <?php endif ?>
                <?php if ($this->ion_auth->is_admin()) : ?>
                <li>
                    <a class="waves-effect" href="javascript:void(0);" aria-expanded="false"><i
                            class="icon-settings fa-fw"></i> <span class="hide-menu"> SETTINGS<span
                                class="caret pull-right m-t-10"></span></span></a>
                    <ul aria-expanded="false" class="collapse m-b-40 p-b-40">
                        <li><a href="#station" data-toggle="modal">STATION</a></li>
                        <li><a href="<?= site_url('admin/roles') ?>">ROLES</a></li>
                        <li><a href="#restore" data-toggle="modal">RESTORE</a></li>
                        <li><a href="<?= site_url('backup') ?>" data-toggle="modal">BACKUP</a></li>
                        <li><a href="#system" data-toggle="modal">SYSTEM</a></li>
                    </ul>
                </li>
                <?php endif ?>
            </ul>
        </nav>
    </div>
</aside>