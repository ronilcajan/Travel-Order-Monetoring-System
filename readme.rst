###################
Travel Order Monitoring System
###################

.. image:: screenshots/dashboard.png
    :alt: Dashboard screenshot
    :align: center

This is a web-based system for managing travel orders within an organization, 
built using the CodeIgniter 3 PHP framework. It allows authorized users to submit 
travel orders, track their status, and generate reports on travel expenses and related data. 
The system also includes features for managing users, departments, officials, positions, and 
other administrative tasks.

*******************
Features
*******************

* Secure user authentication and access control
* User management, including adding, editing, and deleting users and assigning roles and permissions
* Department management, including adding, editing, and deleting departments and assigning users to departments
* Official management, including adding, editing, and deleting officials and assigning users to officials
* Position management, including adding, editing, and deleting positions and assigning users to positions
* Travel order submission and approval workflows
* Built using the CodeIgniter 3 PHP framework for modularity and ease of maintenance

**************************
Technologies Used
**************************

This system is built using the following technologies:

* CodeIgniter 3 (PHP framework)
* MySQL (relational database management system)
* HTML/CSS/JavaScript (front-end web technologies)
* Bootstrap (front-end framework for responsive design)

*******************
Installation
*******************

PHP version 5.6 or newer is recommended.

It should work on 5.3.7 as well, but we strongly advise you NOT to run
such old versions of PHP, because of potential security and performance
issues, as well as missing features.

To install and configure this system, follow these steps:

* Install a web server (such as Apache) and a PHP runtime environment on your server or local machine.
* Create a MySQL database and user for the system.
* Clone the source code from the GitHub repository into your web server's document root directory.
* Copy the application/config/config.example.php file to application/config/config.php and edit it to set the database connection parameters and other system settings.
* Run the SQL script database.sql to create the necessary database tables and initial data.
* Open the system in your web browser and log in with the default administrator account (username: admin, password: admin123).

*******
Usage
*******

Once the system is installed and configured, you can use it to manage travel orders for your organization, as well as other administrative tasks. Here are some typical workflows:

* User management: add, edit, and delete users, and assign roles and permissions to users.
* Department management: add, edit, and delete departments, and assign users to departments.
* Official management: add, edit, and delete officials, and assign users to officials.
* Position management: add, edit, and delete positions, and assign users to positions.
* Travel order submission and approval workflows: users submit travel order requests, supervisors approve or reject requests, and travelers update orders with actual expenses and receipts.


*********
License
*********

This system is released under the MIT License. You are free to use, modify, and distribute it as you wish, as long as you include the original copyright notice and license terms.
