<?php
defined('BASEPATH') or exit('No direct script access allowed');

$route['default_controller'] = 'auth';
$route['404_override'] = 'settings/error_page';
$route['translate_uri_dashes'] = FALSE;

$route['login'] = 'auth';
$route['admin'] = 'auth';

$route['admin/dashboard'] = 'dashboard/index';
$route['admin/officials'] = 'officials/index';
$route['admin/position'] = 'position/index';
$route['admin/resident'] = 'resident/index';
$route['admin/user'] = 'auth/users';
$route['admin/roles'] = 'roles/index';

$route['admin/division'] = 'division/index';

$route['admin/officials/create'] = 'officials/create';
$route['admin/officials/edit/(:num)'] = 'officials/edit/$1';

$route['admin/employees'] = 'employee/index';
$route['admin/employees/create'] = 'employee/create';
$route['admin/employee/edit/(:num)'] = 'employee/edit/$1';

$route['admin/travel_orders'] = 'travel_order/index';
$route['travel_order/getTravelOrder/(:num)'] = 'travel_order/getTravelOrder/$1';
$route['admin/generate_travel_order/(:num)'] = 'travel_order/generate_travel_order/$1';

$route['admin/request'] = 'request/index';

$route['backup'] = 'settings/backup';
$route['restore'] = 'settings/restore';
$route['admin/attempts'] = 'settings/login_attempts';
$route['admin/history'] = 'settings/history';
$route['403_override'] = 'settings/error_forbidden';