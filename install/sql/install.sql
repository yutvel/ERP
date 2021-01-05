SET sql_mode = '';
--
-- Table structure for table `acc_coa`
--

CREATE TABLE IF NOT EXISTS `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL,
  PRIMARY KEY (`HeadName`),
  KEY `HeadCode` (`HeadCode`),
  KEY `customer_id` (`customer_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_coa`
--

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES
('102030000001', '1-Walking Customer', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 1, NULL, '0.00', '1', '2019-11-16 08:44:42', '', '0000-00-00 00:00:00'),
('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, NULL, NULL, '0.00', 'admin', '2015-10-15 19:50:43', '', '2019-09-05 00:00:00'),
('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', 'admin', '2013-09-18 15:29:35'),
('1', 'Assets', 'COA', 0, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-06-25 13:47:29', 'admin', '2015-10-15 15:57:55'),
('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-03-18 06:08:18', 'admin', '2015-10-15 15:32:42'),
('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-01-26 07:38:48', 'admin', '2016-05-23 12:05:43'),
('102', 'Current Asset', 'Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', 'admin', '2018-07-07 11:23:00'),
('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('1020301', 'Customer Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-01-24 12:10:05', 'admin', '2018-07-07 12:31:42'),
('401', 'Default expense', 'Expence', 1, 1, 1, 0, 'E', 1, 1, NULL, NULL, '1.00', '1', '2019-12-21 09:00:55', '', '0000-00-00 00:00:00'),
('50204', 'Employee Ledger', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, NULL, NULL, '0.00', '1', '2019-04-08 10:36:32', '', '2019-09-05 00:00:00'),
('403', 'Employee Salary', 'Expence', 1, 1, 1, 0, 'E', 0, 1, NULL, NULL, '1.00', '1', '2019-06-17 11:44:52', '', '2019-09-05 00:00:00'),
('2', 'Equity', 'COA', 0, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('4', 'Expence', 'COA', 0, 1, 0, 0, 'E', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('3', 'Income', 'COA', 0, 1, 0, 0, 'I', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('10107', 'Inventory', 'Non Current Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '2', '2018-07-07 15:21:58', '', '2019-09-05 00:00:00'),
('5', 'Liabilities', 'COA', 0, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54'),
('1020302', 'Loan Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-01-26 07:37:20', '', '2019-09-05 00:00:00'),
('101', 'Non Current Assets', 'Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', 'admin', '2015-10-15 15:29:11'),
('501', 'Non Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('402', 'Product Purchase', 'Expence', 1, 1, 0, 0, 'E', 0, 0, NULL, NULL, '0.00', '2', '2018-07-07 14:00:16', 'admin', '2015-10-15 18:37:42'),
('303', 'Product Sale', 'Income', 1, 1, 1, 0, 'I', 0, 0, NULL, NULL, '0.00', '1', '2019-06-17 08:22:42', '', '2019-09-05 00:00:00'),
('304', 'Service Income', 'Income', 1, 1, 1, 0, 'I', 0, 0, NULL, NULL, '0.00', '1', '2019-06-17 11:31:11', '', '2019-09-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

CREATE TABLE IF NOT EXISTS `acc_transaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`),
  KEY `COAID` (`COAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_setting`
--

CREATE TABLE IF NOT EXISTS `app_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localhserver` varchar(250) DEFAULT NULL,
  `onlineserver` varchar(250) DEFAULT NULL,
  `hotspot` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_setting`
--

INSERT INTO `app_setting` (`id`, `localhserver`, `onlineserver`, `hotspot`) VALUES
(1, 'https://192.168.1.153/saleserp_sas_v-2', 'https://saleserpnew.bdtask.com/saleserp_v9.3-demo', 'https://192.168.1.167/saleserp');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `att_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sign_in` varchar(30) NOT NULL,
  `sign_out` varchar(30) NOT NULL,
  `staytime` varchar(30) NOT NULL,
  PRIMARY KEY (`att_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bank_add`
--

CREATE TABLE IF NOT EXISTS `bank_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(250) DEFAULT NULL,
  `ac_number` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `signature_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `company_information`
--

CREATE TABLE IF NOT EXISTS `company_information` (
  `company_id` varchar(250) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_information`
--

INSERT INTO `company_information` (`company_id`, `company_name`, `email`, `address`, `mobile`, `website`, `status`) VALUES
('1', 'Bdtask Ltd', 'bdtask@gmail.com', '4th Floor Mannan Plaza,Khilkhet,Dhaka-1229', '01852376598', 'httpss://www.bdtask.com/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_tbl`
--

CREATE TABLE IF NOT EXISTS `currency_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(50) NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency_tbl`
--

INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES
(1, 'Dollar', '$'),
(2, 'BDT', '৳');

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE IF NOT EXISTS `customer_information` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) NOT NULL,
  `address2` text NOT NULL,
  `customer_mobile` varchar(100) NOT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text,
  `state` text,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL COMMENT '1=paid,2=credit',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_information`
--

INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `address2`, `customer_mobile`, `customer_email`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `status`, `create_date`, `create_by`) VALUES
(1, 'Walking Customer', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-03-02 23:23:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daily_banking_add`
--

CREATE TABLE IF NOT EXISTS `daily_banking_add` (
  `banking_id` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `bank_id` varchar(100) DEFAULT NULL,
  `deposit_type` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `description` text,
  `amount` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `daily_closing`
--

CREATE TABLE IF NOT EXISTS `daily_closing` (
  `closing_id` varchar(255) NOT NULL,
  `last_day_closing` float NOT NULL,
  `cash_in` float NOT NULL,
  `cash_out` float NOT NULL,
  `date` varchar(250) NOT NULL,
  `amount` float NOT NULL,
  `adjustment` float DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE IF NOT EXISTS `designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(150) NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE IF NOT EXISTS `email_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` varchar(35) NOT NULL,
  `smtp_pass` varchar(35) NOT NULL,
  `mailtype` varchar(30) DEFAULT NULL,
  `isinvoice` tinyint(4) NOT NULL,
  `isservice` tinyint(4) NOT NULL,
  `isquotation` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `protocol`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `mailtype`, `isinvoice`, `isservice`, `isquotation`) VALUES
(1, 'ssmtp', 'ssl://ssmtp.gmail.com', '25', 'demo@gmail.com', 'demo123456', 'html', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--

CREATE TABLE IF NOT EXISTS `employee_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `rate_type` int(11) NOT NULL,
  `hrate` float NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `address_line_1` text NOT NULL,
  `address_line_2` text NOT NULL,
  `image` text,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payment`
--

CREATE TABLE IF NOT EXISTS `employee_salary_payment` (
  `emp_sal_pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `generate_id` int(11) NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` decimal(18,2) NOT NULL DEFAULT '0.00',
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `salary_month` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`emp_sal_pay_id`),
  KEY `employee_id` (`employee_id`),
  KEY `generate_id` (`generate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_setup`
--

CREATE TABLE IF NOT EXISTS `employee_salary_setup` (
  `e_s_s_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL,
  PRIMARY KEY (`e_s_s_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE IF NOT EXISTS `expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense_item`
--

CREATE TABLE IF NOT EXISTS `expense_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_item_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `total_amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `due_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `prevous_due` decimal(20,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `invoice` bigint(20) NOT NULL,
  `invoice_discount` decimal(10,2) DEFAULT '0.00' COMMENT 'invoice discount',
  `total_discount` decimal(10,2) DEFAULT '0.00' COMMENT 'total invoice discount',
  `total_tax` decimal(10,2) DEFAULT '0.00',
  `sales_by` varchar(50) NOT NULL,
  `invoice_details` text NOT NULL,
  `status` int(2) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `invoice_id` (`invoice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE IF NOT EXISTS `invoice_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_details_id` varchar(100) NOT NULL,
  `invoice_id` varchar(100) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(12,0) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phrase` text NOT NULL,
  `english` text,
  `espanol` text,
  `bangla` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=919 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `espanol`, `bangla`) VALUES
( 1, 'user_profile', 'User Profile', 'Perfil del usuario', NULL),
( 2, 'setting', 'Setting', 'Ajuste', NULL),
( 3, 'language', 'Language', 'Idioma', NULL),
( 4, 'manage_users', 'Manage Users', 'Administrar los usuarios', NULL),
( 5, 'add_user', 'Add User', 'Agregar usuario', NULL),
( 6, 'manage_company', 'Manage Company', 'Manejo de la empresa', NULL),
( 7, 'web_settings', 'Software Settings', 'Configuración de software', NULL),
( 8, 'manage_accounts', 'Manage Accounts', 'Cuentas de administración', NULL),
( 9, 'create_accounts', 'Create Account', 'Crear una cuenta', NULL),
( 10, 'manage_bank', 'Manage Bank', 'De Bank', NULL),
( 11, 'add_new_bank', 'Add New Bank', 'Añadir nuevo banco', NULL),
( 12, 'settings', 'Settings', 'Configuración', NULL),
( 13, 'closing_report', 'Closing Report', 'Informe final', NULL),
( 14, 'closing', 'Closing', 'Clausura', NULL),
( 15, 'cheque_manager', 'Cheque Manager', 'Compruebe el Administrador', NULL),
( 16, 'accounts_summary', 'Accounts Summary', 'Resumen de cuentas', NULL),
( 17, 'expense', 'Expense', 'Gastos', NULL),
( 18, 'income', 'Income', 'Ingresos', NULL),
( 19, 'accounts', 'Accounts', 'cuentas', NULL),
( 20, 'stock_report', 'Stock Report', 'Informe de la', NULL),
( 21, 'stock', 'Stock', 'Valores', NULL),
( 22, 'pos_invoice', 'POS Sale', 'Venta POS', NULL),
( 23, 'manage_invoice', 'Manage Sale', 'Director del Sale', NULL),
( 24, 'new_invoice', 'New Sale', 'Nuevo Venta', NULL),
( 25, 'invoice', 'Sale', 'Rebaja', NULL),
( 26, 'manage_purchase', 'Manage Purchase', 'Manejo de Compra', NULL),
( 27, 'add_purchase', 'Add Purchase', 'Añadir Compra', NULL),
( 28, 'purchase', 'Purchase', 'Compra', NULL),
( 29, 'paid_customer', 'Paid Customer', 'A cargo del cliente', NULL),
( 30, 'manage_customer', 'Manage Customer', 'Manejo de Cliente', NULL),
( 31, 'add_customer', 'Add Customer', 'Agregar al cliente', NULL),
( 32, 'customer', 'Customer', 'Cliente', NULL),
( 33, 'supplier_payment_actual', 'Supplier Payment Ledger', 'Pago a Proveedores de Ledger', NULL),
( 34, 'supplier_sales_summary', 'Supplier Sales Summary', 'Resumen de ventas del Proveedor', NULL),
( 35, 'supplier_sales_details', 'Supplier Sales Details', 'Detalles del Proveedor Ventas', NULL),
( 36, 'supplier_ledger', 'Supplier Ledger', 'Proveedor de Ledger', NULL),
( 37, 'manage_supplier', 'Manage Supplier', 'Manejo del Proveedor', NULL),
( 38, 'add_supplier', 'Add Supplier', 'Agregar Proveedor', NULL),
( 39, 'supplier', 'Supplier', 'Proveedor', NULL),
( 40, 'product_statement', 'Product Statement', 'Declaración de producto', NULL),
( 41, 'manage_product', 'Manage Product', 'Manejo de producto', NULL),
( 42, 'add_product', 'Add Product', 'Agregar producto', NULL),
( 43, 'product', 'Product', 'Producto', NULL),
( 44, 'manage_category', 'Manage Category', 'Gestionar categoría', NULL),
( 45, 'add_category', 'Add Category', 'Añadir categoría', NULL),
( 46, 'category', 'Category', 'Categoría', NULL),
( 47, 'sales_report_product_wise', 'Sales Report (Product Wise)', 'Informe de ventas (Producto Wise)', NULL),
( 48, 'purchase_report', 'Purchase Report', 'Informe de la compra', NULL),
( 49, 'sales_report', 'Sales Report', 'Reporte de ventas', NULL),
( 50, 'todays_report', 'Todays Report', 'Informe del día de hoy', NULL),
( 51, 'report', 'Report', 'Reporte', NULL),
( 52, 'dashboard', 'Dashboard', 'Tablero', NULL),
( 53, 'online', 'Online', 'En línea', NULL),
( 54, 'logout', 'Logout', 'Cerrar sesión', NULL),
( 55, 'change_password', 'Change Password', 'Cambia la contraseña', NULL),
( 56, 'total_purchase', 'Total Purchase', 'Compra Total', NULL),
( 57, 'total_amount', 'Total Amount', 'Cantidad total', NULL),
( 58, 'supplier_name', 'Supplier Name', 'Nombre del proveedor', NULL),
( 59, 'invoice_no', 'Invoice No', 'Factura no', NULL),
( 60, 'purchase_date', 'Purchase Date', 'Fecha de compra', NULL),
( 61, 'todays_purchase_report', 'Todays Purchase Report', 'Informe Compra hoy', NULL),
( 62, 'total_sales', 'Total Sales', 'Ventas totales', NULL),
( 63, 'customer_name', 'Customer Name', 'Nombre del cliente', NULL),
( 64, 'sales_date', 'Sales Date', 'Fecha de ventas', NULL),
( 65, 'todays_sales_report', 'Todays Sales Report', 'Informe de ventas de hoy', NULL),
( 66, 'home', 'Home', 'Casa', NULL),
( 67, 'todays_sales_and_purchase_report', 'Todays sales and purchase report', 'Venta y compra de hoy el informe', NULL),
( 68, 'total_ammount', 'Total Amount', 'Cantidad total', NULL),
( 69, 'rate', 'Rate', 'Velocidad', NULL),
( 70, 'product_model', 'Product Model', 'Modelo del Producto', NULL),
( 71, 'product_name', 'Product Name', 'Nombre del producto', NULL),
( 72, 'search', 'Search', 'Buscar', NULL),
( 73, 'end_date', 'End Date', 'Fecha final', NULL),
( 74, 'start_date', 'Start Date', 'Fecha de inicio', NULL),
( 75, 'total_purchase_report', 'Total Purchase Report', 'Informe total de la compra', NULL),
( 76, 'total_sales_report', 'Total Sales Report', 'Informe del total de ventas', NULL),
( 77, 'total_seles', 'Total Sales', 'Ventas totales', NULL),
( 78, 'all_stock_report', 'All Stock Report', 'Todo informe de la', NULL),
( 79, 'search_by_product', 'Search By Product', 'Búsqueda por producto', NULL),
( 80, 'date', 'Date', 'Fecha', NULL),
( 81, 'print', 'Print', 'Impresión', NULL),
( 82, 'stock_date', 'Stock Date', 'Fecha de la', NULL),
( 83, 'print_date', 'Print Date', 'Fecha de impresion', NULL),
( 84, 'sales', 'Sales', 'Ventas', NULL),
( 85, 'price', 'Price', 'Precio', NULL),
( 86, 'sl', 'SL.', 'SL.', NULL),
( 87, 'add_new_category', 'Add new category', 'Añadir nueva categoria', NULL),
( 88, 'category_name', 'Category Name', 'Nombre de la categoría', NULL),
( 89, 'save', 'Save', 'Salvar', NULL),
( 90, 'delete', 'Delete', 'Eliminar', NULL),
( 91, 'update', 'Update', 'Actualizar', NULL),
( 92, 'action', 'Action', 'Acción', NULL),
( 93, 'manage_your_category', 'Manage your category ', 'Administrar su categoría ', NULL),
( 94, 'category_edit', 'Category Edit', 'Categoría Editar', NULL),
( 95, 'status', 'Status', 'Estado', NULL),
( 96, 'active', 'Active', 'Activo', NULL),
( 97, 'inactive', 'Inactive', 'Inactivo', NULL),
( 98, 'save_changes', 'Save Changes', 'Guardar cambios', NULL),
( 99, 'save_and_add_another', 'Save And Add Another', 'Guardar y añadir otro', NULL),
( 100, 'model', 'Model', 'Modelo', NULL),
( 101, 'supplier_price', 'Supplier Price', 'Proveedor de precios', NULL),
( 102, 'sell_price', 'Sale Price', 'Precio de venta', NULL),
( 103, 'image', 'Image', 'Imagen', NULL),
( 104, 'select_one', 'Select One', 'Seleccione uno', NULL),
( 105, 'details', 'Details', 'detalles', NULL),
( 106, 'new_product', 'New Product', 'Nuevo producto', NULL),
( 107, 'add_new_product', 'Add new product', 'Agregar nuevo producto', NULL),
( 108, 'barcode', 'Barcode', 'Código de barras', NULL),
( 109, 'qr_code', 'Qr-Code', 'Código QR', NULL),
( 110, 'product_details', 'Product Details', 'Detalles de producto', NULL),
( 111, 'manage_your_product', 'Manage your product', 'Manejo de su producto', NULL),
( 112, 'product_edit', 'Product Edit', 'Editar producto', NULL),
( 113, 'edit_your_product', 'Edit your product', 'Editar su producto', NULL),
( 114, 'cancel', 'Cancel', 'Cancelar', NULL),
( 115, 'incl_vat', 'Incl. Vat', 'Incl. IVA', NULL),
( 116, 'money', 'TK', 'TK', NULL),
( 117, 'grand_total', 'Grand Total', 'Gran total', NULL),
( 118, 'quantity', 'Qnty', 'Qnty', NULL),
( 119, 'product_report', 'Product Report', 'Informe producto', NULL),
( 120, 'product_sales_and_purchase_report', 'Product sales and purchase report', 'Las ventas de productos y compra informe', NULL),
( 121, 'previous_stock', 'Previous Stock', 'De la anterior', NULL),
( 122, 'out', 'Out', 'Afuera', NULL),
( 123, 'in', 'In', 'En', NULL),
( 124, 'to', 'To', 'A', NULL),
( 125, 'previous_balance', 'Previous Credit Balance', 'Anterior balance de crédito', NULL),
( 126, 'customer_address', 'Customer Address', 'Dirección del cliente', NULL),
( 127, 'customer_mobile', 'Customer Mobile', 'Cliente móvil', NULL),
( 128, 'customer_email', 'Customer Email', 'Correo electrónico del cliente', NULL),
( 129, 'add_new_customer', 'Add new customer', 'Añadir nuevo cliente', NULL),
( 130, 'balance', 'Balance', 'Equilibrar', NULL),
( 131, 'mobile', 'Mobile', 'Móvil', NULL),
( 132, 'address', 'Address', 'Habla a', NULL),
( 133, 'manage_your_customer', 'Manage your customer', 'Administrar su cliente', NULL),
( 134, 'customer_edit', 'Customer Edit', 'Editar cliente', NULL),
( 135, 'paid_customer_list', 'Paid Customer List', 'A cargo Lista de clientes', NULL),
( 136, 'ammount', 'Amount', 'Cantidad', NULL),
( 137, 'customer_ledger', 'Customer Ledger', 'Cliente de Ledger', NULL),
( 138, 'manage_customer_ledger', 'Manage Customer Ledger', 'Manejo de Cliente de Ledger', NULL),
( 139, 'customer_information', 'Customer Information', 'Información al cliente', NULL),
( 140, 'debit_ammount', 'Debit Amount', 'Debe Importe', NULL),
( 141, 'credit_ammount', 'Credit Amount', 'Monto de crédito', NULL),
( 142, 'balance_ammount', 'Balance Amount', 'Balance de Cuenta', NULL),
( 143, 'receipt_no', 'Receipt NO', 'Recibo NO', NULL),
( 144, 'description', 'Description', 'Descripción', NULL),
( 145, 'debit', 'Debit', 'Débito', NULL),
( 146, 'credit', 'Credit', 'Crédito', NULL),
( 147, 'item_information', 'Item Information', 'Información del artículo', NULL),
( 148, 'total', 'Total', 'Total', NULL),
( 149, 'please_select_supplier', 'Please Select Supplier', 'Por favor seleccione Proveedor', NULL),
( 150, 'submit', 'Submit', 'Enviar', NULL),
( 151, 'submit_and_add_another', 'Submit And Add Another One', 'Enviar y añadir otro', NULL),
( 152, 'add_new_item', 'Add New Item', 'Agregar ítem nuevo', NULL),
( 153, 'manage_your_purchase', 'Manage your purchase', 'Gestionar su compra', NULL),
( 154, 'purchase_edit', 'Purchase Edit', 'Compra Editar', NULL),
( 155, 'purchase_ledger', 'Purchase Ledger', 'Libro mayor de compra', NULL),
( 156, 'invoice_information', 'Sale Information', 'Información de venta', NULL),
( 157, 'paid_ammount', 'Paid Amount', 'Monto de pago', NULL),
( 158, 'discount', 'Dis./Pcs.', 'Dis./Pcs .', NULL),
( 159, 'save_and_paid', 'Save And Paid', 'Guardar y pagado', NULL),
( 160, 'payee_name', 'Payee Name', 'Nombre del beneficiario', NULL),
( 161, 'manage_your_invoice', 'Manage your Sale', 'Gestionar su venta', NULL),
( 162, 'invoice_edit', 'Sale Edit', 'Editar la venta', NULL),
( 163, 'new_pos_invoice', 'New POS Sale', 'Nuevo punto de venta Venta', NULL),
( 164, 'add_new_pos_invoice', 'Add new pos Sale', 'Añadir nueva pos venta', NULL),
( 165, 'product_id', 'Product ID', 'Identificación de producto', NULL),
( 166, 'paid_amount', 'Paid Amount', 'Monto de pago', NULL),
( 167, 'authorised_by', 'Authorised By', 'Autorizado por', NULL),
( 168, 'checked_by', 'Checked By', 'Revisado por', NULL),
( 169, 'received_by', 'Received By', 'Recibido por', NULL),
( 170, 'prepared_by', 'Prepared By', 'Preparado por', NULL),
( 171, 'memo_no', 'Memo No', 'Memo no', NULL),
( 172, 'website', 'Website', 'Sitio web', NULL),
( 173, 'email', 'Email', 'Email', NULL),
( 174, 'invoice_details', 'Sale Details', 'Venta El detalle', NULL),
( 175, 'reset', 'Reset', 'Reiniciar', NULL),
( 176, 'payment_account', 'Payment Account', 'Cuenta de pago', NULL),
( 177, 'bank_name', 'Bank Name', 'Nombre del banco', NULL),
( 178, 'cheque_or_pay_order_no', 'Cheque/Pay Order No', 'Compruebe / Pago de orden', NULL),
( 179, 'payment_type', 'Payment Type', 'Tipo de pago', NULL),
( 180, 'payment_from', 'Payment From', 'Pago de', NULL),
( 181, 'payment_date', 'Payment Date', 'Fecha de pago', NULL),
( 182, 'add_income', 'Add Income', 'Añadir Ingresos', NULL),
( 183, 'cash', 'Cash', 'Efectivo', NULL),
( 184, 'cheque', 'Cheque', 'Cheque', NULL),
( 185, 'pay_order', 'Pay Order', 'Orden de pago', NULL),
( 186, 'payment_to', 'Payment To', 'Pago Para', NULL),
( 187, 'total_outflow_ammount', 'Total Expense Amount', 'Monto total de gastos', NULL),
( 188, 'transections', 'Transections', 'transección', NULL),
( 189, 'accounts_name', 'Accounts Name', 'Nombre cuentas', NULL),
( 190, 'outflow_report', 'Expense Report', 'Informe de gastos', NULL),
( 191, 'inflow_report', 'Income Report', 'Informe de resultados', NULL),
( 192, 'all', 'All', 'Todas', NULL),
( 193, 'account', 'Account', 'Cuenta', NULL),
( 194, 'from', 'From', 'Desde', NULL),
( 195, 'account_summary_report', 'Account Summary Report', 'Resumen de la cuenta Report', NULL),
( 196, 'search_by_date', 'Search By Date', 'Buscar por fecha', NULL),
( 197, 'cheque_no', 'Cheque No', 'Sin comprobar', NULL),
( 198, 'name', 'Name', 'Nombre', NULL),
( 199, 'closing_account', 'Closing Account', 'Cierre de cuenta', NULL),
( 200, 'close_your_account', 'Close your account', 'Cerrar su cuenta', NULL),
( 201, 'last_day_closing', 'Last Day Closing', 'Ultimo día de cierre', NULL),
( 202, 'cash_in', 'Cash In', 'Dinero en efectivo en', NULL),
( 203, 'cash_out', 'Cash Out', 'Reintegro', NULL),
( 204, 'cash_in_hand', 'Cash In Hand', 'Dinero en efectivo', NULL),
( 205, 'add_new_bank', 'Add New Bank', 'Añadir nuevo banco', NULL),
( 206, 'day_closing', 'Day Closing', 'Día de cierre', NULL),
( 207, 'account_closing_report', 'Account Closing Report', 'Cuenta, informe de cierre', NULL),
( 208, 'last_day_ammount', 'Last Day Amount', 'Último día Monto', NULL),
( 209, 'adjustment', 'Adjustment', 'Ajustamiento', NULL),
( 210, 'pay_type', 'Pay Type', 'Pago Tipo', NULL),
( 211, 'customer_or_supplier', 'Customer,Supplier Or Others', 'Cliente', NULL),
( 212, 'transection_id', 'Transections ID', 'Transección ID', NULL),
( 213, 'accounts_summary_report', 'Accounts Summary Report', 'Cuentas Informe de síntesis', NULL),
( 214, 'bank_list', 'Bank List', 'Lista de bancos', NULL),
( 215, 'bank_edit', 'Bank Edit', 'Banco Editar', NULL),
( 216, 'debit_plus', 'Debit (+)', 'Débito (+)', NULL),
( 217, 'credit_minus', 'Credit (-)', 'Crédito (-)', NULL),
( 218, 'account_name', 'Account Name', 'Nombre de la cuenta', NULL),
( 219, 'account_type', 'Account Type', 'Tipo de cuenta', NULL),
( 220, 'account_real_name', 'Account Real Name', 'Cuenta Nombre real', NULL),
( 221, 'manage_account', 'Manage Account', 'Administrar cuenta', NULL),
( 222, 'company_name', 'Niha International', 'Niha Internacional', NULL),
( 223, 'edit_your_company_information', 'Edit your company information', 'Editar su información de la compañía', NULL),
( 224, 'company_edit', 'Company Edit', 'La empresa Other', NULL),
( 225, 'admin', 'Admin', 'Administración', NULL),
( 226, 'user', 'User', 'Usuario', NULL),
( 227, 'password', 'Password', 'Contraseña', NULL),
( 228, 'last_name', 'Last Name', 'Apellido', NULL),
( 229, 'first_name', 'First Name', 'Primer nombre', NULL),
( 230, 'add_new_user_information', 'Add new user information', 'Añadir nueva información de usuario', NULL),
( 231, 'user_type', 'User Type', 'Tipo de usuario', NULL),
( 232, 'user_edit', 'User Edit', 'Editar usuario', NULL),
( 233, 'rtr', 'RTR', 'RTR', NULL),
( 234, 'ltr', 'LTR', 'LTR', NULL),
( 235, 'ltr_or_rtr', 'LTR/RTR', 'LTR / RTR', NULL),
( 236, 'footer_text', 'Footer Text', 'Texto de pie de página', NULL),
( 237, 'favicon', 'Favicon', 'favicon', NULL),
( 238, 'logo', 'Logo', 'Logo', NULL),
( 239, 'update_setting', 'Update Setting', 'Ajuste de actualización', NULL),
( 240, 'update_your_web_setting', 'Update your web setting', 'Actualizar la configuración de red', NULL),
( 241, 'login', 'Login', 'Iniciar sesión', NULL),
( 242, 'your_strong_password', 'Your strong password', 'Su contraseña segura', NULL),
( 243, 'your_unique_email', 'Your unique email', 'Su única de correo electrónico', NULL),
( 244, 'please_enter_your_login_information', 'Please enter your login information.', 'Por favor, introduzca su información de registro.', NULL),
( 245, 'update_profile', 'Update Profile', 'Actualización del perfil', NULL),
( 246, 'your_profile', 'Your Profile', 'Tu perfil', NULL),
( 247, 're_type_password', 'Re-Type Password', 'Vuelva a escribir la contraseña', NULL),
( 248, 'new_password', 'New Password', 'Nueva contraseña', NULL),
( 249, 'old_password', 'Old Password', 'Contraseña anterior', NULL),
( 250, 'new_information', 'New Information', 'Nueva información', NULL),
( 251, 'old_information', 'Old Information', 'Información de edad', NULL),
( 252, 'change_your_information', 'Change your information', 'Cambiar su información', NULL),
( 253, 'change_your_profile', 'Change your profile', 'Cambiar el perfil', NULL),
( 254, 'profile', 'Profile', 'Perfil', NULL),
( 255, 'wrong_username_or_password', 'Wrong User Name Or Password !', 'Nombre de usuario o contraseña incorrectos !', NULL),
( 256, 'successfully_updated', 'Successfully Updated.', 'Actualizado exitosamente.', NULL),
( 257, 'blank_field_does_not_accept', 'Blank Field Does Not Accept !', 'El campo en blanco no acepta!', NULL),
( 258, 'successfully_changed_password', 'Successfully changed password.', 'Se ha cambiado correctamente la contraseña.', NULL),
( 259, 'you_are_not_authorised_person', 'You are not authorised person !', 'No está autorizado persona!', NULL),
( 260, 'password_and_repassword_does_not_match', 'Passwor and re-password does not match !', 'Passwor y volver a la contraseña no coincide!', NULL),
( 261, 'new_password_at_least_six_character', 'New Password At Least 6 Character.', 'Nueva contraseña de al menos 6 caracteres .', NULL),
( 262, 'you_put_wrong_email_address', 'You put wrong email address !', 'Pones dirección de correo electrónico equivocada!', NULL),
( 263, 'cheque_ammount_asjusted', 'Cheque amount adjusted.', 'Comprobar la cantidad se ajusta .', NULL),
( 264, 'successfully_payment_paid', 'Successfully Payment Paid.', 'Éxito del pago pagado .', NULL),
( 265, 'successfully_added', 'Successfully Added.', 'Agregado exitosamente.', NULL),
( 266, 'successfully_updated_2_closing_ammount_not_changeale', 'Successfully Updated -2. Note: Closing Amount Not Changeable.', 'Actualizado con éxito -2. Nota: Cierre cantidad que no modificable .', NULL),
( 267, 'successfully_payment_received', 'Successfully Payment Received.', 'Éxito pago recibido .', NULL),
( 268, 'already_inserted', 'Already Inserted !', 'Ya insertada!', NULL),
( 269, 'successfully_delete', 'Successfully Delete.', 'Eliminar éxito .', NULL),
( 270, 'successfully_created', 'Successfully Created.', 'Creado con éxito .', NULL),
( 271, 'logo_not_uploaded', 'Logo not uploaded !', 'Logo no ha subido!', NULL),
( 272, 'favicon_not_uploaded', 'Favicon not uploaded !', 'Favicon no ha subido!', NULL),
( 273, 'supplier_mobile', 'Supplier Mobile', 'Proveedor móvil', NULL),
( 274, 'supplier_address', 'Supplier Address', 'Dirección del proveedor', NULL),
( 275, 'supplier_details', 'Supplier Details', 'Detalles del Proveedor', NULL),
( 276, 'add_new_supplier', 'Add New Supplier', 'Agregar nuevo proveedor', NULL),
( 277, 'manage_suppiler', 'Manage Supplier', 'Manejo del Proveedor', NULL),
( 278, 'manage_your_supplier', 'Manage your supplier', 'Administrar su proveedor', NULL),
( 279, 'manage_supplier_ledger', 'Manage supplier ledger', 'Administrar libro mayor proveedor', NULL),
( 280, 'invoice_id', 'Invoice ID', 'ID de factura', NULL),
( 281, 'deposite_id', 'Deposite ID', 'Deposit ID', NULL),
( 282, 'supplier_actual_ledger', 'Supplier Payment Ledger', 'Pago a Proveedores de Ledger', NULL),
( 283, 'supplier_information', 'Supplier Information', 'Información del proveedor', NULL),
( 284, 'event', 'Event', 'Evento', NULL),
( 285, 'add_new_income', 'Add New Income', 'Añadir nuevos ingresos', NULL),
( 286, 'add_expese', 'Add Expense', 'Agregar gastos', NULL),
( 287, 'add_new_expense', 'Add New Expense', 'Añadir nuevo gasto', NULL),
( 288, 'total_inflow_ammount', 'Total Income Amount', 'Monto total de los ingresos', NULL),
( 289, 'create_new_invoice', 'Create New Sale', 'Crear nueva venta', NULL),
( 290, 'create_pos_invoice', 'Create POS Sale', 'Crear POS Venta', NULL),
( 291, 'total_profit', 'Total Profit', 'Beneficio total', NULL),
( 292, 'monthly_progress_report', 'Monthly Progress Report', 'Reporte de progreso mensual', NULL),
( 293, 'total_invoice', 'Total Sale', 'Venta total', NULL),
( 294, 'account_summary', 'Account Summary', 'Resumen de la cuenta', NULL),
( 295, 'total_supplier', 'Total Supplier', 'Proveedor Total', NULL),
( 296, 'total_product', 'Total Product', 'Producto total', NULL),
( 297, 'total_customer', 'Total Customer', 'Cliente Total', NULL),
( 298, 'supplier_edit', 'Supplier Edit', 'Editar proveedor', NULL),
( 299, 'add_new_invoice', 'Add New Sale', 'Añadir nueva venta', NULL),
( 300, 'add_new_purchase', 'Add new purchase', 'Añadir nueva compra', NULL),
( 301, 'currency', 'Currency', 'Moneda', NULL),
( 302, 'currency_position', 'Currency Position', 'Posición de divisas', NULL),
( 303, 'left', 'Left', 'Izquierda', NULL),
( 304, 'right', 'Right', 'Correcto', NULL),
( 305, 'add_tax', 'Add Tax', 'Añadir impuestos', NULL),
( 306, 'manage_tax', 'Manage Tax', 'Manejo de impuestos', NULL),
( 307, 'add_new_tax', 'Add new tax', 'Añadir nuevo impuesto', NULL),
( 308, 'enter_tax', 'Enter Tax', 'Introducir impuestos', NULL),
( 309, 'already_exists', 'Already Exists !', 'Ya existe !', NULL),
( 310, 'successfully_inserted', 'Successfully Inserted.', 'Insertado éxito .', NULL),
( 311, 'tax', 'Tax', 'Impuesto', NULL),
( 312, 'tax_edit', 'Tax Edit', 'Editar impuestos', NULL),
( 313, 'product_not_added', 'Product not added !', 'El producto no ha añadido!', NULL),
( 314, 'total_tax', 'Total Tax', 'Total impuestos', NULL),
( 315, 'manage_your_supplier_details', 'Manage your supplier details.', 'Manejo de los datos de su proveedor .', NULL),
( 316, 'invoice_description', 'Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', 'Lorem Ipsum es ply sim maniquí Lorem Ipsum es simplemente maniquí Lorem Ipsum es simplemente maniquí Lorem Ipsum es simplemente maniquí Lorem Ipsum es simplemente maniquí Lorem Ipsum es ply sim maniquí Lorem Ipsum es simplemente maniquí Lorem Ipsum es simplemente maniquí Lorem Ipsum es simplemente maniquí Lorem Ipsum es simplemente ficticio', NULL),
( 317, 'thank_you_for_choosing_us', 'Thank you very much for choosing us.', 'Muchas gracias por su preferencia.', NULL),
( 318, 'billing_date', 'Billing Date', 'Fecha de facturación', NULL),
( 319, 'billing_to', 'Billing To', 'Facturación a', NULL),
( 320, 'billing_from', 'Billing From', 'A partir de la facturación', NULL),
( 321, 'you_cant_delete_this_product', 'Sorry !! You can\t delete this product.This product already used in calculation system!', 'Lo siento !! Puede \ t eliminar este producto producto.Este ya utilizado en el sistema de cálculo!', NULL),
( 322, 'old_customer', 'Old Customer', 'Cliente de edad', NULL),
( 323, 'new_customer', 'New Customer', 'Nuevo cliente', NULL),
( 324, 'new_supplier', 'New Supplier', 'Nuevo proveedor', NULL),
( 325, 'old_supplier', 'Old Supplier', 'Proveedor de edad', NULL),
( 326, 'credit_customer', 'Credit Customer', 'Cliente de crédito', NULL),
( 327, 'account_already_exists', 'This Account Already Exists !', 'Esta cuenta ya existe !', NULL),
( 328, 'edit_income', 'Edit Income', 'Editar Ingresos', NULL),
( 329, 'you_are_not_access_this_part', 'You are not authorised person !', 'No está autorizado persona!', NULL),
( 330, 'account_edit', 'Account Edit', 'Editar cuenta', NULL),
( 331, 'due', 'Due', 'Debido', NULL),
( 332, 'expense_edit', 'Expense Edit', 'Editar gasto', NULL),
( 333, 'please_select_customer', 'Please select customer !', 'Por favor, seleccione al cliente!', NULL),
( 334, 'profit_report', 'Profit Report (Sale Wise)', 'Informe beneficio (Venta Wise)', NULL),
( 335, 'total_profit_report', 'Total profit report', 'Informe del total de ganancias', NULL),
( 336, 'please_enter_valid_captcha', 'Please enter valid captcha.', 'Por favor, introduzca código de imagen válida .', NULL),
( 337, 'category_not_selected', 'Category not selected.', 'Categoría no seleccionado.', NULL),
( 338, 'supplier_not_selected', 'Supplier not selected.', 'El proveedor no seleccionado.', NULL),
( 339, 'please_select_product', 'Please select product.', 'Por favor seleccione su producto.', NULL),
( 340, 'product_model_already_exist', 'Product model already exist !', 'Modelo del producto ya existe!', NULL),
( 341, 'invoice_logo', 'Sale Logo', 'Logotipo de la venta', NULL),
( 342, 'available_qnty', 'Av. Qnty.', 'AV. Qnty .', NULL),
( 343, 'you_can_not_buy_greater_than_available_cartoon', 'You can not select grater than available cartoon !', 'No se puede seleccionar rallador de dibujos animados disponible!', NULL),
( 344, 'customer_details', 'Customer details', 'Detalles del cliente', NULL),
( 345, 'manage_customer_details', 'Manage customer details.', 'Manejo de los datos del cliente.', NULL),
( 346, 'site_key', 'Captcha Site Key', 'Captcha Site Key', NULL),
( 347, 'secret_key', 'Captcha Secret Key', 'Captcha clave secreta', NULL),
( 348, 'captcha', 'Captcha', 'Captcha', NULL),
( 349, 'cartoon_quantity', 'Cartoon Quantity', 'Cantidad de dibujos animados', NULL),
( 350, 'total_cartoon', 'Total Cartoon', 'Dibujos animados total', NULL),
( 351, 'cartoon', 'Cartoon', 'Dibujos animados', NULL),
( 352, 'item_cartoon', 'Item/Cartoon', 'Artículo / de dibujos animados', NULL),
( 353, 'product_and_supplier_did_not_match', 'Product and supplier did not match !', 'Producto y el distribuidor no se correspondían!', NULL),
( 354, 'if_you_update_purchase_first_select_supplier_then_product_and_then_quantity', 'first select supplier then product and then update qnty. If you update purchase', 'Si actualiza compra', NULL),
( 355, 'item', 'Item', 'Articulo', NULL),
( 356, 'manage_your_credit_customer', 'Manage your credit customer', 'Administrar su crédito cliente', NULL),
( 357, 'total_quantity', 'Total Quantity', 'Cantidad total', NULL),
( 358, 'quantity_per_cartoon', 'Quantity per cartoon', 'Cantidad por dibujos animados', NULL),
( 359, 'barcode_qrcode_scan_here', 'Barcode or QR-code scan here', 'Código de barras o código QR de Análisis Aquí', NULL),
( 360, 'synchronizer_setting', 'Synchronizer Setting', 'Sincronizador Setting', NULL),
( 361, 'data_synchronizer', 'Data Synchronizer', 'Datos sincronizador', NULL),
( 362, 'hostname', 'Host name', 'nombre de host', NULL),
( 363, 'username', 'User Name', 'Nombre de usuario', NULL),
( 364, 'ftp_port', 'FTP Port', 'Puerto FTP', NULL),
( 365, 'ftp_debug', 'FTP Debug', 'FTP depuración', NULL),
( 366, 'project_root', 'Project Root', 'Raíz del proyecto', NULL),
( 367, 'please_try_again', 'Please try again', 'Inténtalo de nuevo', NULL),
( 368, 'save_successfully', 'Save successfully', 'Guardar éxito', NULL),
( 369, 'synchronize', 'Synchronize', 'Sincronizar', NULL),
( 370, 'internet_connection', 'Internet Connection', 'Conexión a Internet', NULL),
( 371, 'outgoing_file', 'Outgoing File', 'Archivo de salida', NULL),
( 372, 'incoming_file', 'Incoming File', 'Archivo de entrada', NULL),
( 373, 'ok', 'Ok', 'Okay', NULL),
( 374, 'not_available', 'Not Available', 'No disponible', NULL),
( 375, 'available', 'Available', 'Disponible', NULL),
( 376, 'download_data_from_server', 'Download data from server', 'datos de servidor de descarga', NULL),
( 377, 'data_import_to_database', 'Data import to database', 'importación de datos a la base de datos', NULL),
( 378, 'data_upload_to_server', 'Data uplod to server', 'Datos uplod al servidor', NULL),
( 379, 'please_wait', 'Please Wait', 'Por favor espera', NULL),
( 380, 'ooops_something_went_wrong', 'Oooops Something went wrong !', 'Oooops Algo salió mal!', NULL),
( 381, 'upload_successfully', 'Upload successfully', 'Sube éxito', NULL),
( 382, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file please check configuration', 'No se puede subir por favor configuración de comprobación del archivo', NULL),
( 383, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings', 'Por favor, configure los ajustes del sincronizador', NULL),
( 384, 'download_successfully', 'Download successfully', 'Descargar correctamente', NULL),
( 385, 'unable_to_download_file_please_check_configuration', 'Unable to download file please check configuration', 'No se ha podido descargar el archivo de configuración de cuenta, por favor', NULL),
( 386, 'data_import_first', 'Data import past', 'Los datos de importación pasado', NULL),
( 387, 'data_import_successfully', 'Data import successfully', 'Importación de datos de éxito', NULL),
( 388, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data please check config or sql file', 'No es posible importar datos de configuración complacer cheque o archivo sql', NULL),
( 389, 'total_sale_ctn', 'Total Sale Ctn', 'Venta total CTN', NULL),
( 390, 'in_qnty', 'In Qnty.', 'En Qnty .', NULL),
( 391, 'out_qnty', 'Out Qnty.', 'Qnty a cabo .', NULL),
( 392, 'stock_report_supplier_wise', 'Stock Report (Supplier Wise)', 'Informe de la (Proveedor Wise)', NULL),
( 393, 'all_stock_report_supplier_wise', 'Stock Report (Suppler Wise)', 'Informe de la (Suppler Wise)', NULL),
( 394, 'select_supplier', 'Select Supplier', 'Seleccione Proveedor', NULL),
( 395, 'stock_report_product_wise', 'Stock Report (Product Wise)', 'Informe de la (Producto Wise)', NULL),
( 396, 'phone', 'Phone', 'Teléfono', NULL),
( 397, 'select_product', 'Select Product', 'Seleccionar producto', NULL),
( 398, 'in_quantity', 'In Qnty.', 'En Qnty .', NULL),
( 399, 'out_quantity', 'Out Qnty.', 'Qnty a cabo .', NULL),
( 400, 'in_taka', 'In TK.', 'En TK .', NULL),
( 401, 'out_taka', 'Out TK.', 'Sale TK .', NULL),
( 402, 'commission', 'Commission', 'Comisión', NULL),
( 403, 'generate_commission', 'Generate Commssion', 'Generar commssion', NULL),
( 404, 'commission_rate', 'Commission Rate', 'Porcentaje de comision', NULL),
( 405, 'total_ctn', 'Total Ctn.', 'CTN total.', NULL),
( 406, 'per_pcs_commission', 'Per PCS Commission', 'Comisión por las PC', NULL),
( 407, 'total_commission', 'Total Commission', 'Comisión total', NULL),
( 408, 'enter', 'Enter', 'Entrar', NULL),
( 409, 'please_add_walking_customer_for_default_customer', 'Please add \Walking Customer\ for default customer.', 'Añada \ Cliente Caminar \ para el cliente por defecto.', NULL),
( 410, 'supplier_ammount', 'Supplier Amount', 'Monto del proveedor', NULL),
( 411, 'my_sale_ammount', 'My Sale Amount', 'Mi cantidad de venta', NULL),
( 412, 'signature_pic', 'Signature Picture', 'Firma imagen', NULL),
( 413, 'branch', 'Branch', 'Rama', NULL),
( 414, 'ac_no', 'A/C Number', 'A / C Número', NULL),
( 415, 'ac_name', 'A/C Name', 'A / C Nombre', NULL),
( 416, 'bank_transaction', 'Bank Transaction', 'Transacción bancaria', NULL),
( 417, 'bank', 'Bank', 'Banco', NULL),
( 418, 'withdraw_deposite_id', 'Withdraw / Deposite ID', 'Retirar / deposite ID', NULL),
( 419, 'bank_ledger', 'Bank Ledger', 'Banco de Ledger', NULL),
( 420, 'note_name', 'Note Name', 'Nota Nombre', NULL),
( 421, 'pcs', 'Pcs.', 'Pcs .', NULL),
( 422, '1', '1', '1', NULL),
( 423, '2', '2', '2', NULL),
( 424, '5', '5', '5', NULL),
( 425, '10', '10', '10', NULL),
( 426, '20', '20', '20', NULL),
( 427, '50', '50', '50', NULL),
( 428, '100', '100', '100', NULL),
( 429, '500', '500', '500', NULL),
( 430, '1000', '1000', '1000', NULL),
( 431, 'total_discount', 'Total Discount', 'Descuento total', NULL),
( 432, 'product_not_found', 'Product not found !', 'Producto no encontrado !', NULL),
( 433, 'this_is_not_credit_customer', 'This is not credit customer !', 'Esto no es cliente de crédito!', NULL),
( 434, 'personal_loan', 'Personal Loan', 'Préstamo personal', NULL),
( 435, 'add_person', 'Add Person', 'Agregar persona', NULL),
( 436, 'add_loan', 'Add Loan', 'Añadir Préstamo', NULL),
( 437, 'add_payment', 'Add Payment', 'Agregar Pago', NULL),
( 438, 'manage_person', 'Manage Person', 'Manejo de persona', NULL),
( 439, 'personal_edit', 'Person Edit', 'Editar persona', NULL),
( 440, 'person_ledger', 'Person Ledger', 'Persona de Ledger', NULL),
( 441, 'backup_restore', 'Backup ', 'Apoyo ', NULL),
( 442, 'database_backup', 'Database backup', 'Base de datos de copia de seguridad', NULL),
( 443, 'file_information', 'File information', 'Informacion del archivo', NULL),
( 444, 'filename', 'Filename', 'Nombre del archivo', NULL),
( 445, 'size', 'Size', 'Talla', NULL),
( 446, 'backup_date', 'Backup date', 'fecha de copia de seguridad', NULL),
( 447, 'backup_now', 'Backup now', 'Copia ahora', NULL),
( 448, 'restore_now', 'Restore now', 'Restaurar ahora', NULL),
( 449, 'are_you_sure', 'Are you sure ?', 'Estás seguro ?', NULL),
( 450, 'download', 'Download', 'Descargar', NULL),
( 451, 'backup_and_restore', 'Backup', 'Apoyo', NULL),
( 452, 'backup_successfully', 'Backup successfully', 'Copia de seguridad con éxito', NULL),
( 453, 'delete_successfully', 'Delete successfully', 'Eliminar correctamente', NULL),
( 454, 'stock_ctn', 'Stock/Qnt', 'Stock / Qnt', NULL),
( 455, 'unit', 'Unit', 'Unidad', NULL),
( 456, 'meter_m', 'Meter (M)', 'Meter (M)', NULL),
( 457, 'piece_pc', 'Piece (Pc)', 'Pieza (Pc)', NULL),
( 458, 'kilogram_kg', 'Kilogram (Kg)', 'Kilogramo (kg)', NULL),
( 459, 'stock_cartoon', 'Stock Cartoon', 'De dibujos animados', NULL),
( 460, 'add_product_csv', 'Add Product (CSV)', 'Añadir Producto (CSV)', NULL),
( 461, 'import_product_csv', 'Import product (CSV)', 'producto de importación (CSV)', NULL),
( 462, 'close', 'Close', 'Cerca', NULL),
( 463, 'download_example_file', 'Download example file.', 'Descargar archivo de ejemplo.', NULL),
( 464, 'upload_csv_file', 'Upload CSV File', 'Subir Archivo CSV', NULL),
( 465, 'csv_file_informaion', 'CSV File Information', 'Información del archivo CSV', NULL),
( 466, 'out_of_stock', 'Out Of Stock', 'Agotado', NULL),
( 467, 'others', 'Others', 'Otros', NULL),
( 468, 'full_paid', 'Full Paid', 'Total pagado', NULL),
( 469, 'successfully_saved', 'Your Data Successfully Saved', 'Sus datos se han guardado correctamente', NULL),
( 470, 'manage_loan', 'Manage Loan', 'Manejo de Préstamo', NULL),
( 471, 'receipt', 'Receipt', 'Recibo', NULL),
( 472, 'payment', 'Payment', 'Pago', NULL),
( 473, 'cashflow', 'Daily Cash Flow', 'Flujo de efectivo de cada día', NULL),
( 474, 'signature', 'Signature', 'Firma', NULL),
( 475, 'supplier_reports', 'Supplier Reports', 'Proveedor Informes', NULL),
( 476, 'generate', 'Generate', 'Generar', NULL),
( 477, 'todays_overview', 'Todays Overview', 'Descripción general del día de hoy', NULL),
( 478, 'last_sales', 'Last Sales', 'Últimos Ventas', NULL),
( 479, 'manage_transaction', 'Manage Transaction', 'Manejo de Transacción', NULL),
( 480, 'daily_summary', 'Daily Summary', 'Resumen diario', NULL),
( 481, 'daily_cash_flow', 'Daily Cash Flow', 'Flujo de efectivo de cada día', NULL),
( 482, 'custom_report', 'Custom Report', 'Informe personalizado', NULL),
( 483, 'transaction', 'Transaction', 'Transacción', NULL),
( 484, 'receipt_amount', 'Receipt Amount', 'Importe del recibo', NULL),
( 485, 'transaction_details_datewise', 'Transaction Details Datewise', 'Detalles de Transacción DATEwise', NULL),
( 486, 'cash_closing', 'Cash Closing', 'Cierre de caja', NULL),
( 487, 'you_can_not_buy_greater_than_available_qnty', 'You can not buy greater than available qnty.', 'No se puede comprar mayor que qnty disponibles.', NULL),
( 488, 'supplier_id', 'Supplier ID', 'Identificación del proveedor', NULL),
( 489, 'category_id', 'Category ID', 'Categoria ID', NULL),
( 490, 'select_report', 'Select Report', 'Seleccionar informe', NULL),
( 491, 'supplier_summary', 'Supplier summary', 'Resumen del proveedor', NULL),
( 492, 'sales_payment_actual', 'Sales payment actual', 'el pago real de venta', NULL),
( 493, 'today_already_closed', 'Today already closed.', 'Hoy en día ya se cerró .', NULL),
( 494, 'root_account', 'Root Account', 'Cuenta root', NULL),
( 495, 'office', 'Office', 'Oficina', NULL),
( 496, 'loan', 'Loan', 'Préstamo', NULL),
( 497, 'transaction_mood', 'Transaction Mood', 'Transacción del estado de ánimo', NULL),
( 498, 'select_account', 'Select Account', 'Seleccionar la cuenta', NULL),
( 499, 'add_receipt', 'Add Receipt', 'Agregar recibo', NULL),
( 500, 'update_transaction', 'Update Transaction', 'Actualización de transacción', NULL),
( 501, 'no_stock_found', 'No Stock Found !', 'Sin inventario encontrado!', NULL),
( 502, 'admin_login_area', 'Admin Login Area', 'Administrador Login', NULL),
( 503, 'print_qr_code', 'Print QR Code', 'Imprimir Código QR', NULL),
( 504, 'discount_type', 'Discount Type', 'Tipo de descuento', NULL),
( 505, 'discount_percentage', 'Discount', 'Descuento', NULL),
( 506, 'fixed_dis', 'Fixed Dis.', 'Dis fijo .', NULL),
( 507, 'return', 'Return', 'Regreso', NULL),
( 508, 'stock_return_list', 'Stock Return List', 'Lista de Retorno', NULL),
( 509, 'wastage_return_list', 'Wastage Return List', 'Lista desperdicio Retorno', NULL),
( 510, 'return_invoice', 'Sale Return', 'Venta Retorno', NULL),
( 511, 'sold_qty', 'Sold Qty', 'Cantidad vendida', NULL),
( 512, 'ret_quantity', 'Return Qty', 'Cantidad de retorno', NULL),
( 513, 'deduction', 'Deduction', 'Deducción', NULL),
( 514, 'check_return', 'Check Return', 'Compruebe Retorno', NULL),
( 515, 'reason', 'Reason', 'Razón', NULL),
( 516, 'usablilties', 'Usability', 'usabilidad', NULL),
( 517, 'adjs_with_stck', 'Adjust With Stock', 'Con ajuste de la', NULL),
( 518, 'return_to_supplier', 'Return To Supplier', 'Devolución al proveedor', NULL),
( 519, 'wastage', 'Wastage', 'Pérdida', NULL),
( 520, 'to_deduction', 'Total Deduction ', 'Deducción total ', NULL),
( 521, 'nt_return', 'Net Return Amount', 'Net Return Monto', NULL),
( 522, 'return_list', 'Return List', 'Lista de retorno', NULL),
( 523, 'add_return', 'Add Return', 'Añadir Retorno', NULL),
( 524, 'per_qty', 'Purchase Qty', 'Cantidad de compra', NULL),
( 525, 'return_supplier', 'Supplier Return', 'Proveedor Retorno', NULL),
( 526, 'stock_purchase', 'Stock Purchase Price', 'De Compra de precios', NULL),
( 527, 'stock_sale', 'Stock Sale Price', 'Stock Precio de Venta', NULL),
( 528, 'supplier_return', 'Supplier Return', 'Proveedor Retorno', NULL),
( 529, 'purchase_id', 'Purchase ID', 'Compra el ID', NULL),
( 530, 'return_id', 'Return ID', 'Volver ID', NULL),
( 531, 'supplier_return_list', 'Supplier Return List', 'Lista de proveedores de retorno', NULL),
( 532, 'c_r_slist', 'Stock Return Stock', 'Archivo regreso de la', NULL),
( 533, 'wastage_list', 'Wastage List', 'Lista despilfarro', NULL),
( 534, 'please_input_correct_invoice_id', 'Please Input a Correct Sale ID', 'Por favor introduce una Venta ID correcta', NULL),
( 535, 'please_input_correct_purchase_id', 'Please Input Your Correct Purchase ID', 'Por favor introduzca su correcta Compra ID', NULL),
( 536, 'add_more', 'Add More', 'Añadir más', NULL),
( 537, 'prouct_details', 'Product Details', 'Detalles de producto', NULL),
( 538, 'prouct_detail', 'Product Details', 'Detalles de producto', NULL),
( 539, 'stock_return', 'Stock Return', 'Devolución de stock', NULL),
( 540, 'choose_transaction', 'Select Transaction', 'Seleccionar Transacción', NULL),
( 541, 'transection_category', 'Select Category', 'Selecciona una categoría', NULL),
( 542, 'transaction_categry', 'Select Category', 'Selecciona una categoría', NULL),
( 543, 'search_supplier', 'Search Supplier', 'Búsqueda Proveedor', NULL),
( 544, 'customer_id', 'Customer ID', 'Identificación del cliente', NULL),
( 545, 'search_customer', 'Search Customer Invoice', 'Buscar factura al cliente', NULL),
( 546, 'serial_no', 'SN', 'SN', NULL),
( 547, 'item_discount', 'Item Discount', 'Descuento artículo', NULL),
( 548, 'invoice_discount', 'Sale Discount', 'Descuento venta', NULL),
( 549, 'add_unit', 'Add Unit', 'Añadir Unidad', NULL),
( 550, 'manage_unit', 'Manage Unit', 'Manejo de la Unidad', NULL),
( 551, 'add_new_unit', 'Add New Unit', 'Anadir unidad', NULL),
( 552, 'unit_name', 'Unit Name', 'Nombre de la unidad', NULL),
( 553, 'payment_amount', 'Payment Amount', 'Monto del pago', NULL),
( 554, 'manage_your_unit', 'Manage Your Unit', 'Administre su Unidad', NULL),
( 555, 'unit_id', 'Unit ID', 'ID de unidad', NULL),
( 556, 'unit_edit', 'Unit Edit', 'Unidad de edición', NULL),
( 557, 'vat', 'Vat', 'IVA', NULL),
( 558, 'sales_report_category_wise', 'Sales Report (Category wise)', 'Informe de ventas (Categoría sabia)', NULL),
( 559, 'purchase_report_category_wise', 'Purchase Report (Category wise)', 'Informe de la compra (Categoría sabia)', NULL),
( 560, 'category_wise_purchase_report', 'Category wise purchase report', 'Categoría informe sabia compra', NULL),
( 561, 'category_wise_sales_report', 'Category wise sales report', 'Informe de ventas sabias categoría', NULL),
( 562, 'best_sale_product', 'Best Sale Product', 'La mejor venta del producto', NULL),
( 563, 'all_best_sales_product', 'All Best Sales Products', 'Todos los productos más vendidos', NULL),
( 564, 'todays_customer_receipt', 'Todays Customer Receipt', 'Del día de hoy recibo del cliente', NULL),
( 565, 'not_found', 'Record not found', 'Registro no encontrado', NULL),
( 566, 'collection', 'Collection', 'Colección', NULL),
( 567, 'increment', 'Increment', 'Incremento', NULL),
( 568, 'accounts_tree_view', 'Accounts Tree View', 'Cuentas de vista de árbol', NULL),
( 569, 'debit_voucher', 'Debit Voucher', 'Vale de débito', NULL),
( 570, 'voucher_no', 'Voucher No', 'La hoja no', NULL),
( 571, 'credit_account_head', 'Credit Account Head', 'Cuenta de crédito Head', NULL),
( 572, 'remark', 'Remark', 'Observación', NULL),
( 573, 'code', 'Code', 'Código', NULL),
( 574, 'amount', 'Amount', 'Cantidad', NULL),
( 575, 'approved', 'Approved', 'Aprobado', NULL),
( 576, 'debit_account_head', 'Debit Account Head', 'Cabeza de débito cuenta', NULL),
( 577, 'credit_voucher', 'Credit Voucher', 'Documento de tarjeta', NULL),
( 578, 'find', 'Find', 'Encontrar', NULL),
( 579, 'transaction_date', 'Transaction Date', 'Fecha de Transacción', NULL),
( 580, 'voucher_type', 'Voucher Type', 'Tipo de vales', NULL),
( 581, 'particulars', 'Particulars', 'Informe detallado', NULL),
( 582, 'with_details', 'With Details', 'Con detalles', NULL),
( 583, 'general_ledger', 'General Ledger', 'Libro mayor', NULL),
( 584, 'general_ledger_of', 'General ledger of', 'contabilidad general de', NULL),
( 585, 'pre_balance', 'Pre Balance', 'Pre Balance', NULL),
( 586, 'current_balance', 'Current Balance', 'Saldo actual', NULL),
( 587, 'to_date', 'To Date', 'Hasta la fecha', NULL),
( 588, 'from_date', 'From Date', 'Partir de la fecha', NULL),
( 589, 'trial_balance', 'Trial Balance', 'Balance de comprobación', NULL),
( 590, 'authorized_signature', 'Authorized Signature', 'Firma autorizada', NULL),
( 591, 'chairman', 'Chairman', 'Presidente', NULL),
( 592, 'total_income', 'Total Income', 'Ingresos totales', NULL),
( 593, 'statement_of_comprehensive_income', 'Statement of Comprehensive Income', 'Estado del resultado integral', NULL),
( 594, 'profit_loss', 'Profit Loss', 'Pérdida de beneficios', NULL),
( 595, 'cash_flow_report', 'Cash Flow Report', 'Informe de flujo de efectivo', NULL),
( 596, 'cash_flow_statement', 'Cash Flow Statement', 'Flujos de Efectivo', NULL),
( 597, 'amount_in_dollar', 'Amount In Dollar', 'Monto en dólares', NULL),
( 598, 'opening_cash_and_equivalent', 'Opening Cash and Equivalent', 'Apertura de efectivo y equivalentes', NULL),
( 599, 'coa_print', 'Coa Print', 'COA Print', NULL),
( 600, 'cash_flow', 'Cash Flow', 'Flujo de efectivo', NULL),
( 601, 'cash_book', 'Cash Book', 'Libro de pago', NULL),
( 602, 'bank_book', 'Bank Book', 'Banco de libros', NULL),
( 603, 'c_o_a', 'Chart of Account', 'Plan de cuentas', NULL),
( 604, 'journal_voucher', 'Journal Voucher', 'Documento preliminar', NULL),
( 605, 'contra_voucher', 'Contra Voucher', 'Contra vale', NULL),
( 606, 'voucher_approval', 'Vouchar Approval', 'Aprobación Vouchar', NULL),
( 607, 'supplier_payment', 'Supplier Payment', 'Surtidor Pago', NULL),
( 608, 'customer_receive', 'Customer Receive', 'Recibir al cliente', NULL),
( 609, 'gl_head', 'General Head', 'General de cabeza', NULL),
( 610, 'account_code', 'Account Head', 'Cuenta Head', NULL),
( 611, 'opening_balance', 'Opening Balance', 'Saldo de apertura', NULL),
( 612, 'head_of_account', 'Head of Account', 'Jefe de Cuenta', NULL),
( 613, 'inventory_ledger', 'Inventory Ledger', 'Inventario de Ledger', NULL),
( 614, 'newpassword', 'New Password', 'Nueva contraseña', NULL),
( 615, 'password_recovery', 'Password Recovery', 'Recuperación de contraseña', NULL),
( 616, 'forgot_password', 'Forgot Password ??', 'Se te olvidó tu contraseña ??', NULL),
( 617, 'send', 'Send', 'Enviar', NULL),
( 618, 'due_report', 'Due Report', 'Debido Informe', NULL),
( 619, 'due_amount', 'Due Amount', 'Cantidad debida', NULL),
( 620, 'download_sample_file', 'Download Sample File', 'Descarga de archivos de la muestra', NULL),
( 621, 'customer_csv_upload', 'Customer Csv Upload', 'Subir al cliente Csv', NULL),
( 622, 'csv_supplier', 'Csv Upload Supplier', 'Csv Subir Proveedor', NULL),
( 623, 'csv_upload_supplier', 'Csv Upload Supplier', 'Csv Subir Proveedor', NULL),
( 624, 'previous', 'Previous', 'Anterior', NULL),
( 625, 'net_total', 'Net Total', 'Total neto', NULL),
( 626, 'currency_list', 'Currency List', 'Lista Currency', NULL),
( 627, 'currency_name', 'Currency Name', 'Nombre moneda', NULL),
( 628, 'currency_icon', 'Currency Symbol', 'Símbolo de moneda', NULL),
( 629, 'add_currency', 'Add Currency', 'Añadir divisas', NULL),
( 630, 'role_permission', 'Role Permission', 'Permiso papel', NULL),
( 631, 'role_list', 'Role List', 'Lista de papel', NULL),
( 632, 'user_assign_role', 'User Assign Role', 'Usuario en Asignar funciones', NULL),
( 633, 'permission', 'Permission', 'Permiso', NULL),
( 634, 'add_role', 'Add Role', 'Agregar rol', NULL),
( 635, 'add_module', 'Add Module', 'Agregar módulo', NULL),
( 636, 'module_name', 'Module Name', 'Nombre del módulo', NULL),
( 637, 'office_loan', 'Office Loan', 'Oficina de Préstamo', NULL),
( 638, 'add_menu', 'Add Menu', 'Añadir menú', NULL),
( 639, 'menu_name', 'Menu Name', 'Nombre del menú', NULL),
( 640, 'sl_no', 'Sl No', 'Si. No', NULL),
( 641, 'create', 'Create', 'Crear', NULL),
( 642, 'read', 'Read', 'Leer', NULL),
( 643, 'role_name', 'Role Name', 'Nombre de rol', NULL),
( 644, 'qty', 'Quantity', 'Cantidad', NULL),
( 645, 'max_rate', 'Max Rate', 'Máxima calificación', NULL),
( 646, 'min_rate', 'Min Rate', 'Min Rate', NULL),
( 647, 'avg_rate', 'Average Rate', 'Tasa promedio', NULL),
( 648, 'role_permission_added_successfully', 'Role Permission Successfully Added', 'Permiso función satisfactoria Por', NULL),
( 649, 'update_successfully', 'Successfully Updated', 'Actualizado exitosamente', NULL),
( 650, 'role_permission_updated_successfully', 'Role Permission Successfully Updated ', 'Permiso papel Actualizado con éxito "', NULL),
( 651, 'shipping_cost', 'Shipping Cost', 'Costo de envío', NULL),
( 652, 'in_word', 'In Word ', 'En palabra ', NULL),
( 653, 'shipping_cost_report', 'Shipping Cost Report', 'Informe costo de envío', NULL),
( 654, 'cash_book_report', 'Cash Book Report', 'Informe del libro de caja', NULL),
( 655, 'inventory_ledger_report', 'Inventory Ledger Report', 'Informe libro de inventario', NULL),
( 656, 'trial_balance_with_opening_as_on', 'Trial Balance With Opening As On', 'Balance de comprobación con la apertura Como On', NULL),
( 657, 'type', 'Type', 'Tipo', NULL),
( 658, 'taka_only', 'Taka Only', 'Sólo taka', NULL),
( 659, 'item_description', 'Desc', 'desc', NULL),
( 660, 'sold_by', 'Sold By', 'Vendido por', NULL),
( 661, 'user_wise_sales_report', 'User Wise Sales Report', 'Usuario Informe de ventas Wise', NULL),
( 662, 'user_name', 'User Name', 'Nombre de usuario', NULL),
( 663, 'total_sold', 'Total Sold', 'Total vendido', NULL),
( 664, 'user_wise_sale_report', 'User Wise Sales Report', 'Usuario Informe de ventas Wise', NULL),
( 665, 'barcode_or_qrcode', 'Barcode/QR-code', 'Código de barras / código QR', NULL),
( 666, 'category_csv_upload', 'Category Csv Upload', 'Categoría Csv Subir', NULL),
( 667, 'unit_csv_upload', 'Unit Csv Upload', 'Unidad Csv Subir', NULL),
( 668, 'invoice_return_list', 'Sales Return list', 'Lista de Ventas Retorno', NULL),
( 669, 'invoice_return', 'Sales Return', 'Ventas Retorno', NULL),
( 670, 'tax_report', 'Tax Report', 'Informe de impuestos', NULL),
( 671, 'select_tax', 'Select Tax', 'Seleccione Tax', NULL),
( 672, 'hrm', 'HRM', 'HRM', NULL),
( 673, 'employee', 'Employee', 'Empleado', NULL),
( 674, 'add_employee', 'Add Employee', 'Añadir Empleado', NULL),
( 675, 'manage_employee', 'Manage Employee', 'Manejo del Empleado', NULL),
( 676, 'attendance', 'Attendance', 'Asistencia', NULL),
( 677, 'add_attendance', 'Attendance', 'Asistencia', NULL),
( 678, 'manage_attendance', 'Manage Attendance', 'Manejo de Asistencia', NULL),
( 679, 'payroll', 'Payroll', 'Nómina de sueldos', NULL),
( 680, 'add_payroll', 'Payroll', 'Nómina de sueldos', NULL),
( 681, 'manage_payroll', 'Manage Payroll', 'Manejo de nómina', NULL),
( 682, 'employee_type', 'Employee Type', 'Tipo de empleado', NULL),
( 683, 'employee_designation', 'Employee Designation', 'Empleado Designación', NULL),
( 684, 'designation', 'Designation', 'Designacion', NULL),
( 685, 'add_designation', 'Add Designation', 'Añadir Designación', NULL),
( 686, 'manage_designation', 'Manage Designation', 'Manejo de Designación', NULL),
( 687, 'designation_update_form', 'Designation Update form', 'formulario de designación de actualización', NULL),
( 688, 'picture', 'Picture', 'Imagen', NULL),
( 689, 'country', 'Country', 'País', NULL),
( 690, 'blood_group', 'Blood Group', 'Grupo sanguíneo', NULL),
( 691, 'address_line_1', 'Address Line 1', 'Dirección Línea 1', NULL),
( 692, 'address_line_2', 'Address Line 2', 'Dirección Línea 2', NULL),
( 693, 'zip', 'Zip code', 'Código postal', NULL),
( 694, 'city', 'City', 'Ciudad', NULL),
( 695, 'hour_rate_or_salary', 'Houre Rate/Salary', 'Houre Rate / salario', NULL),
( 696, 'rate_type', 'Rate Type', 'Tipo de cambio', NULL),
( 697, 'hourly', 'Hourly', 'Cada hora', NULL),
( 698, 'salary', 'Salary', 'Salario', NULL),
( 699, 'employee_update', 'Employee Update', 'Empleado Actualizar', NULL),
( 700, 'checkin', 'Check In', 'Registrarse', NULL),
( 701, 'employee_name', 'Employee Name', 'Nombre de empleado', NULL),
( 702, 'checkout', 'Check Out', 'Revisa', NULL),
( 703, 'confirm_clock', 'Confirm Clock', 'Confirmar Reloj', NULL),
( 704, 'stay', 'Stay Time', 'Tiempo de permanencia', NULL),
( 705, 'sign_in', 'Sign In', 'Registrarse', NULL),
( 706, 'check_in', 'Check In', 'Registrarse', NULL),
( 707, 'single_checkin', 'Single Check In', 'Comprobar sola En', NULL),
( 708, 'bulk_checkin', 'Bulk Check In', 'Entradas a granel', NULL),
( 709, 'successfully_checkout', 'Successfully Checkout', 'Pedido con éxito', NULL),
( 710, 'attendance_report', 'Attendance Report', 'Reporte de asistencia', NULL),
( 711, 'datewise_report', 'Date Wise Report', 'Fecha del informe Wise', NULL),
( 712, 'employee_wise_report', 'Employee Wise Report', 'Informe Wise empleado', NULL),
( 713, 'date_in_time_report', 'Date In Time Report', 'Fecha Hora del informe En', NULL),
( 714, 'request', 'Request', 'Solicitud', NULL),
( 715, 'sign_out', 'Sign Out', 'Desconectar', NULL),
( 716, 'work_hour', 'Work Hours', 'Horas laborales', NULL),
( 717, 's_time', 'Start Time', 'Hora de inicio', NULL),
( 718, 'e_time', 'In Time', 'A tiempo', NULL),
( 719, 'salary_benefits_type', 'Benefits Type', 'Beneficios Tipo', NULL),
( 720, 'salary_benefits', 'Salary Benefits', 'Los beneficios salariales', NULL),
( 721, 'beneficial_list', 'Benefit List', 'Lista beneficio', NULL),
( 722, 'add_beneficial', 'Add Benefits', 'Más prestaciones', NULL),
( 723, 'add_benefits', 'Add Benefits', 'Más prestaciones', NULL),
( 724, 'benefits_list', 'Benefit List', 'Lista beneficio', NULL),
( 725, 'benefit_type', 'Benefit Type', 'Tipo de beneficio', NULL),
( 726, 'benefits', 'Benefit', 'Beneficio', NULL),
( 727, 'manage_benefits', 'Manage Benefits', 'Administrar los beneficios', NULL),
( 728, 'deduct', 'Deduct', 'Deducir', NULL),
( 729, 'add', 'Add', 'Añadir', NULL),
( 730, 'add_salary_setup', 'Add Salary Setup', 'Añadir instalación de sueldo', NULL),
( 731, 'manage_salary_setup', 'Manage Salary Setup', 'Gestionar el programa de instalación de sueldos', NULL),
( 732, 'basic', 'Basic', 'Básico', NULL),
( 733, 'salary_type', 'Salary Type', 'Salario Tipo', NULL),
( 734, 'addition', 'Addition', 'Adición', NULL),
( 735, 'gross_salary', 'Gross Salary', 'Salario bruto', NULL),
( 736, 'set', 'Set', 'Conjunto', NULL),
( 737, 'salary_generate', 'Salary Generate', 'Generar sueldo', NULL),
( 738, 'manage_salary_generate', 'Manage Salary Generate', 'Gestionar Salario Generar', NULL),
( 739, 'sal_name', 'Salary Name', 'Nombre sueldo', NULL),
( 740, 'gdate', 'Generated Date', 'Fecha generada', NULL),
( 741, 'generate_by', 'Generated By', 'Generado por', NULL),
( 742, 'the_salary_of', 'The Salary of ', 'El salario del ', NULL),
( 743, 'already_generated', 'Already Generated', 'Ya generado', NULL),
( 744, 'salary_month', 'Salary Month', 'Salario Mes', NULL),
( 745, 'successfully_generated', 'Successfully Generated', 'Generado con éxito', NULL),
( 746, 'salary_payment', 'Salary Payment', 'Pago de salario', NULL),
( 747, 'employee_salary_payment', 'Employee Salary Payment', 'Empleado Sueldo pago', NULL),
( 748, 'total_salary', 'Total Salary', 'Salario total', NULL),
( 749, 'total_working_minutes', 'Total Working Hours', 'Horas de trabajo total', NULL),
( 750, 'working_period', 'Working Period', 'Período de trabajo', NULL),
( 751, 'paid_by', 'Paid By', 'Pagado por', NULL),
( 752, 'pay_now', 'Pay Now ', 'Pagar ahora ', NULL),
( 753, 'confirm', 'Confirm', 'Confirmar', NULL),
( 754, 'successfully_paid', 'Successfully Paid', 'A cargo con éxito', NULL),
( 755, 'add_incometax', 'Add Income Tax', 'Añadir Ingreso del', NULL),
( 756, 'setup_tax', 'Setup Tax', 'Configuración de impuestos', NULL),
( 757, 'start_amount', 'Start Amount', 'Monto inicio', NULL),
( 758, 'end_amount', 'End Amount', 'Monto final', NULL),
( 759, 'tax_rate', 'Tax Rate', 'Tasa de impuesto', NULL),
( 760, 'setup', 'Setup', 'Preparar', NULL),
( 761, 'manage_income_tax', 'Manage Income Tax', 'Manejo de Impuestos', NULL),
( 762, 'income_tax_updateform', 'Income tax Update form', 'Impuesto sobre la renta formulario de Actualización', NULL),
( 763, 'positional_information', 'Positional Information', 'La información de posición', NULL),
( 764, 'personal_information', 'Personal Information', 'Informacion personal', NULL),
( 765, 'timezone', 'Time Zone', 'Zona horaria', NULL),
( 766, 'sms', 'SMS', 'SMS', NULL),
( 767, 'sms_configure', 'SMS Configure', 'Configurar SMS', NULL),
( 768, 'url', 'URL', 'URL', NULL),
( 769, 'sender_id', 'Sender ID', 'Identificación del remitente', NULL),
( 770, 'api_key', 'Api Key', 'Clave API', NULL),
( 771, 'gui_pos', 'GUI POS', 'GUI POS', NULL),
( 772, 'manage_service', 'Manage Service', 'Administrar servicio', NULL),
( 773, 'service', 'Service', 'Servicio', NULL),
( 774, 'add_service', 'Add Service', 'Añadir servicio', NULL),
( 775, 'service_edit', 'Service Edit', 'Servicio de edición', NULL),
( 776, 'service_csv_upload', 'Service CSV Upload', 'Servicio CSV Subir', NULL),
( 777, 'service_name', 'Service Name', 'Nombre del Servicio', NULL),
( 778, 'charge', 'Charge', 'Cargar', NULL),
( 779, 'service_invoice', 'Service Invoice', 'Servicio de Factura', NULL),
( 780, 'service_discount', 'Service Discount', 'Descuento servicio', NULL),
( 781, 'hanging_over', 'ETD', 'ETD', NULL),
( 782, 'service_details', 'Service Details', 'Detalles de Servicio', NULL),
( 783, 'tax_settings', 'Tax Settings', 'Ajustes fiscales', NULL),
( 784, 'default_value', 'Default Value', 'Valor por defecto', NULL),
( 785, 'number_of_tax', 'Number of Tax', 'Número de impuestos', NULL),
( 786, 'please_select_employee', 'Please Select Employee', 'Por favor, seleccione Empleado', NULL),
( 787, 'manage_service_invoice', 'Manage Service Invoice', 'Administrar el servicio de Factura', NULL),
( 788, 'update_service_invoice', 'Update Service Invoice', 'Servicio de actualización de facturas', NULL),
( 789, 'customer_wise_tax_report', 'Customer Wise Tax Report', 'Cliente Informe fiscal Wise', NULL),
( 790, 'service_id', 'Service Id', 'Servicio Id', NULL),
( 791, 'invoice_wise_tax_report', 'Invoice Wise Tax Report', 'Informe de factura de impuestos Wise', NULL),
( 792, 'reg_no', 'Reg No', 'Sin reg', NULL),
( 793, 'update_now', 'Update Now', 'Actualizar ahora', NULL),
( 794, 'import', 'Import', 'Importar', NULL),
( 795, 'add_expense_item', 'Add Expense Item', 'Agregar elemento de gastos', NULL),
( 796, 'manage_expense_item', 'Manage Expense Item', 'Administrar artículo de gastos', NULL),
( 797, 'add_expense', 'Add Expense', 'Agregar gastos', NULL),
( 798, 'manage_expense', 'Manage Expense', 'Administrar el gasto', NULL),
( 799, 'expense_statement', 'Expense Statement', 'Declaración de gastos', NULL),
( 800, 'expense_type', 'Expense Type', 'Tipo de gasto', NULL),
( 801, 'expense_item_name', 'Expense Item Name', 'Nombre del elemento de gastos', NULL),
( 802, 'stock_purchase_price', 'Stock Purchase Price', 'De Compra de precios', NULL),
( 803, 'purchase_price', 'Purchase Price', 'Precio de compra', NULL),
( 804, 'customer_advance', 'Customer Advance', 'Cliente Avance', NULL),
( 805, 'advance_type', 'Advance Type', 'Tipo de antemano', NULL),
( 806, 'restore', 'Restore', 'Restaurar', NULL),
( 807, 'supplier_advance', 'Supplier Advance', 'Proveedor Avance', NULL),
( 808, 'please_input_correct_invoice_no', 'Please Input Correct Invoice NO', 'Por favor entrada correcta factura n', NULL),
( 809, 'backup', 'Back Up', 'Apoyo', NULL),
( 810, 'app_setting', 'App Settings', 'Ajustes de Aplicacion', NULL),
( 811, 'local_server_url', 'Local Server Url', 'Url del servidor local', NULL),
( 812, 'online_server_url', 'Online Server Url', 'URL del servidor en línea', NULL),
( 813, 'connet_url', 'Connected Hotspot Ip/url', 'Conectado hotspot IP / URL', NULL),
( 814, 'update_your_app_setting', 'Update Your App Setting', 'Actualizar la aplicación Setting', NULL),
( 815, 'select_category', 'Select Category', 'Selecciona una categoría', NULL),
( 816, 'mini_invoice', 'Mini Invoice', 'Mini factura', NULL),
( 817, 'purchase_details', 'Purchase Details', 'Detalles de la compra', NULL),
( 818, 'disc', 'Dis %', 'Dis%', NULL),
( 819, 'serial', 'Serial', 'De serie', NULL),
( 820, 'transaction_head', 'Transaction Head', 'Transacción Head', NULL),
( 821, 'transaction_type', 'Transaction Type', 'Tipo de transacción', NULL),
( 822, 'return_details', 'Return Details', 'Detalles de la vuelta', NULL),
( 823, 'return_to_customer', 'Return To Customer', 'Volver al Cliente', NULL),
( 824, 'sales_and_purchase_report_summary', 'Sales And Purchase Report Summary', 'Y las ventas Informe Resumen de la compra', NULL),
( 825, 'add_person_officeloan', 'Add Person (Office Loan)', 'Agregar persona (Loan Office)', NULL),
( 826, 'add_loan_officeloan', 'Add Loan (Office Loan)', 'Añadir Préstamo (Loan Office)', NULL),
( 827, 'add_payment_officeloan', 'Add Payment (Office Loan)', 'Agregar Pago (Loan Office)', NULL),
( 828, 'manage_loan_officeloan', 'Manage Loan (Office Loan)', 'Manejo de Préstamo (Loan Office)', NULL),
( 829, 'add_person_personalloan', 'Add Person (Personal Loan)', 'Agregar persona (préstamo personal)', NULL),
( 830, 'add_loan_personalloan', 'Add Loan (Personal Loan)', 'Añadir préstamo (préstamo personal)', NULL),
( 831, 'add_payment_personalloan', 'Add Payment (Personal Loan)', 'Agregar Pago (préstamo personal)', NULL),
( 832, 'manage_loan_personalloan', 'Manage Loan (Personal)', 'Manejo de Préstamo (Personal)', NULL),
( 833, 'hrm_management', 'Human Resource', 'Recursos humanos', NULL),
( 834, 'cash_adjustment', 'Cash Adjustment', 'Ajuste de caja', NULL),
( 835, 'adjustment_type', 'Adjustment Type', 'Tipo de Ajuste', NULL),
( 836, 'change', 'Change', 'Cambio', NULL),
( 837, 'sale_by', 'Sale By', 'Por la venta', NULL),
( 838, 'salary_date', 'Salary Date', 'Fecha sueldo', NULL),
( 839, 'earnings', 'Earnings', 'Ganancias', NULL),
( 840, 'total_addition', 'Total Addition', 'Suma total', NULL),
( 841, 'total_deduction', 'Total Deduction', 'Deducción total', NULL),
( 842, 'net_salary', 'Net Salary', 'Sueldo neto', NULL),
( 843, 'ref_number', 'Reference Number', 'Número de referencia', NULL),
( 844, 'name_of_bank', 'Name Of Bank', 'Nombre del banco', NULL),
( 845, 'salary_slip', 'Salary Slip', 'Nómina', NULL),
( 846, 'basic_salary', 'Basic Salary', 'Salario base', NULL),
( 847, 'return_from_customer', 'Return From Customer', 'De regreso al cliente', NULL),
( 848, 'quotation', 'Quotation', 'Cotización', NULL),
( 849, 'add_quotation', 'Add Quotation', 'Añadir Cita', NULL),
( 850, 'manage_quotation', 'Manage Quotation', 'Manejo de la cita', NULL),
( 851, 'terms', 'Terms', 'Condiciones', NULL),
( 852, 'send_to_customer', 'Sent To Customer', 'Enviado al cliente', NULL),
( 853, 'quotation_no', 'Quotation No', 'Cita No', NULL),
( 854, 'quotation_date', 'Quotation Date', 'Fecha cita', NULL),
( 855, 'total_service_tax', 'Total Service Tax', 'Total Tax Service', NULL),
( 856, 'totalservicedicount', 'Total Service Discount', 'Total de descuento Servicio', NULL),
( 857, 'item_total', 'Item Total', 'Total', NULL),
( 858, 'service_total', 'Service Total', 'Servicio Total', NULL),
( 859, 'quot_description', 'Quotation Description', 'Descripción cita', NULL),
( 860, 'sub_total', 'Sub Total', 'Sub Total', NULL),
( 861, 'mail_setting', 'Mail Setting', 'Configuración del correo', NULL),
( 862, 'mail_configuration', 'Mail Configuration', 'Configuración de correo', NULL),
( 863, 'mail', 'Mail', 'Correo', NULL),
( 864, 'protocol', 'Protocol', 'Protocolo', NULL),
( 865, 'smtp_host', 'SMTP Host', 'Host SMTP', NULL),
( 866, 'smtp_port', 'SMTP Port', 'Puerto SMTP', NULL),
( 867, 'sender_mail', 'Sender Mail', 'Mail Sender', NULL),
( 868, 'mail_type', 'Mail Type', 'Mail Tipo', NULL),
( 869, 'html', 'HTML', 'HTML', NULL),
( 870, 'text', 'TEXT', 'TEXTO', NULL),
( 871, 'expiry_date', 'Expiry Date', 'Fecha de caducidad', NULL),
( 872, 'api_secret', 'Api Secret', 'Api Secreto', NULL),
( 873, 'please_config_your_mail_setting', 'NULL', 'NULO', NULL),
( 874, 'quotation_successfully_added', 'Quotation Successfully Added', 'Cita con éxito Añadido', NULL),
( 875, 'add_to_invoice', 'Add To Invoice', 'Añadir a la factura', NULL),
( 876, 'added_to_invoice', 'Added To Invoice', 'Agregó a la factura', NULL),
( 877, 'closing_balance', 'Closing Balance', 'Balance de cierre', NULL),
( 878, 'contact', 'Contact', 'Contacto', NULL),
( 879, 'fax', 'Fax', 'Fax', NULL),
( 880, 'state', 'State', 'Estado', NULL),
( 881, 'discounts', 'Discount', 'Descuento', NULL),
( 882, 'address1', 'Address1', 'Dirección 1', NULL),
( 883, 'address2', 'Address2', 'Dirección 2', NULL),
( 884, 'receive', 'Receive', 'Recibir', NULL),
( 885, 'purchase_history', 'Purchase History', 'Historial de compras', NULL),
( 886, 'cash_payment', 'Cash Payment', 'Pago en efectivo', NULL),
( 887, 'bank_payment', 'Bank Payment', 'Pago bancario', NULL),
( 888, 'do_you_want_to_print', 'Do You Want to Print', 'Qué desea imprimir', NULL),
( 889, 'yes', 'Yes', 'Si', NULL),
( 890, 'no', 'No', 'No', NULL),
( 891, 'todays_sale', 'Today\s Sales', 'Hoy \ s Sales', NULL),
( 892, 'or', 'OR', 'O', NULL),
( 893, 'no_result_found', 'No Result Found', 'No se han encontrado resultados', NULL),
( 894, 'add_service_quotation', 'Add Service Quotation', 'Añadir servicio Cita', NULL),
( 895, 'add_to_invoice', 'Add To Invoice', 'Añadir a la factura', NULL),
( 896, 'item_quotation', 'Item Quotation', 'Posición de oferta', NULL),
( 897, 'service_quotation', 'Service Quotation', 'Servicio de cotización', NULL),
( 898, 'return_from', 'Return Form', 'Forma de la declaración', NULL),
( 899, 'customer_return_list', 'Customer Return List', 'Lista de Clientes Volver', NULL),
( 900, 'pdf', 'Pdf', 'pdf', NULL),
( 901, 'note', 'Note', 'Nota', NULL),
( 902, 'update_debit_voucher', 'Update Debit Voucher', 'Vale la actualización de débito', NULL),
( 903, 'update_credit_voucher', 'Update Credit voucher', 'bono de actualización de crédito', NULL),
( 904, 'on', 'On', 'En', NULL),
( 905, '', '', '', NULL),
( 906, 'total_expenses', 'Total Expense', 'Gasto total', NULL),
( 907, 'already_exist', 'Already Exist', 'Ya existe', NULL),
( 908, 'checked_out', 'Checked Out', 'Controlado', NULL),
( 909, 'update_salary_setup', 'Update Salary Setup', 'Instalación de la actualización salarial', NULL),
( 910, 'employee_signature', 'Employee Signature', 'Firma del empleado', NULL),
( 911, 'payslip', 'Payslip', 'nómina', NULL),
( 912, 'exsisting_role', 'Existing Role', 'El papel existente', NULL),
( 913, 'filter', 'Filter', 'Filtrar', NULL),
( 914, 'testinput', 'NULL', 'NULO', NULL),
( 915, 'update_quotation', 'Update Quotation', 'Actualización de la cita', NULL),
( 916, 'quotation_successfully_updated', 'Quotation Successfully Updated', 'Cita Actualizado con éxito', NULL),
( 917, 'successfully_approved', 'Successfully Approved', 'Aprobado con éxito', NULL),
( 918, 'expiry', 'Expiry', 'Expiración', NULL);


-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 'invoice', NULL, NULL, NULL, 1),
(2, 'customer', NULL, NULL, NULL, 1),
(3, 'product', NULL, NULL, NULL, 1),
(4, 'supplier', NULL, NULL, NULL, 1),
(5, 'purchase', NULL, NULL, NULL, 1),
(6, 'stock', NULL, NULL, NULL, 1),
(7, 'return', NULL, NULL, NULL, 1),
(8, 'report', NULL, NULL, NULL, 1),
(9, 'accounts', NULL, NULL, NULL, 1),
(10, 'bank', NULL, NULL, NULL, 1),
(11, 'tax', NULL, NULL, NULL, 1),
(12, 'hrm_management', NULL, NULL, NULL, 1),
(13, 'service', NULL, NULL, NULL, 1),
(14, 'commission', NULL, NULL, NULL, 1),
(15, 'setting', NULL, NULL, NULL, 1),
(16, 'quotation', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_tax_setup`
--

CREATE TABLE IF NOT EXISTS `payroll_tax_setup` (
  `tax_setup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `start_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `end_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`tax_setup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `personal_loan`
--

CREATE TABLE IF NOT EXISTS `personal_loan` (
  `per_loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(30) NOT NULL,
  `person_id` varchar(30) NOT NULL,
  `debit` decimal(12,2) DEFAULT '0.00',
  `credit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `date` varchar(30) NOT NULL,
  `details` varchar(100) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid',
  PRIMARY KEY (`per_loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_information`
--

CREATE TABLE IF NOT EXISTS `person_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(50) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_ledger`
--

CREATE TABLE IF NOT EXISTS `person_ledger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(50) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `debit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `details` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid',
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pesonal_loan_information`
--

CREATE TABLE IF NOT EXISTS `pesonal_loan_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(30) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_information`
--

CREATE TABLE IF NOT EXISTS `product_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `tax` float DEFAULT NULL COMMENT 'Tax in %',
  `serial_no` varchar(200) DEFAULT NULL,
  `product_model` varchar(100) DEFAULT NULL,
  `product_details` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase`
--

CREATE TABLE IF NOT EXISTS `product_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` bigint(20) NOT NULL,
  `chalan_no` varchar(100) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `grand_total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) DEFAULT '0.00',
  `due_amount` decimal(10,2) DEFAULT '0.00',
  `total_discount` decimal(10,2) DEFAULT NULL,
  `purchase_date` varchar(50) DEFAULT NULL,
  `purchase_details` text,
  `status` int(2) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase_details`
--

CREATE TABLE IF NOT EXISTS `product_purchase_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_detail_id` varchar(100) DEFAULT NULL,
  `purchase_id` bigint(20) DEFAULT NULL,
  `product_id` varchar(30) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_return`
--

CREATE TABLE IF NOT EXISTS `product_return` (
  `return_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `invoice_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `purchase_id` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `date_purchase` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date_return` varchar(30) CHARACTER SET latin1 NOT NULL,
  `byy_qty` float NOT NULL,
  `ret_qty` float NOT NULL,
  `customer_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `supplier_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deduction` float NOT NULL,
  `total_deduct` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_ret_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `net_total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reason` text CHARACTER SET latin1 NOT NULL,
  `usablity` int(5) NOT NULL,
  KEY `product_id` (`product_id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `customer_id` (`customer_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_service`
--

CREATE TABLE IF NOT EXISTS `product_service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE IF NOT EXISTS `quotation` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `quotation_id` varchar(30) NOT NULL,
  `quot_description` text NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `quotdate` date NOT NULL,
  `expire_date` date DEFAULT NULL,
  `item_total_amount` decimal(12,2) NOT NULL,
  `item_total_dicount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_total_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `service_total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `service_total_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `service_total_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quot_dis_item` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quot_dis_service` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quot_no` varchar(50) NOT NULL,
  `create_by` varchar(30) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` varchar(30) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `cust_show` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quot_no` (`quot_no`),
  KEY `quotation_id` (`quotation_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_service_used`
--

CREATE TABLE IF NOT EXISTS `quotation_service_used` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quot_id` varchar(20) NOT NULL,
  `service_id` int(11) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `quot_id` (`quot_id`),
  KEY `service_id` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_taxinfo`
--

CREATE TABLE IF NOT EXISTS `quotation_taxinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `relation_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `quot_products_used`
--

CREATE TABLE IF NOT EXISTS `quot_products_used` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quot_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `used_qty` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `quot_id` (`quot_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE IF NOT EXISTS `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_generate`
--

CREATE TABLE IF NOT EXISTS `salary_sheet_generate` (
  `ssg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `gdate` varchar(30) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`ssg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_type`
--

CREATE TABLE IF NOT EXISTS `salary_type` (
  `salary_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `sal_name` varchar(100) NOT NULL,
  `salary_type` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`salary_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sec_role`
--

CREATE TABLE IF NOT EXISTS `sec_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sec_userrole`
--

CREATE TABLE IF NOT EXISTS `sec_userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  UNIQUE KEY `ID` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice`
--

CREATE TABLE IF NOT EXISTS `service_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `customer_id` varchar(30) NOT NULL,
  `total_amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `total_discount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `invoice_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `due_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `previous` decimal(10,2) NOT NULL DEFAULT '0.00',
  `details` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice_details`
--

CREATE TABLE IF NOT EXISTS `service_invoice_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `service_inv_id` varchar(30) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `service_id` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE IF NOT EXISTS `sms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(100) DEFAULT NULL,
  `api_secret` varchar(100) DEFAULT NULL,
  `from` varchar(100) DEFAULT NULL,
  `isinvoice` int(11) NOT NULL DEFAULT '0',
  `isservice` int(11) NOT NULL DEFAULT '0',
  `isreceive` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `api_key`, `api_secret`, `from`, `isinvoice`, `isservice`, `isreceive`) VALUES
(1, '5d6db102011', '456452dfgdf', '8801645452', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_module`
--

CREATE TABLE IF NOT EXISTS `sub_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8,
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `directory` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_module`
--

INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 1, 'new_invoice', NULL, NULL, 'new_invoice', 1),
(2, 1, 'manage_invoice', NULL, NULL, 'manage_invoice', 1),
(3, 1, 'pos_invoice', NULL, NULL, 'pos_invoice', 1),
(4, 9, 'c_o_a', NULL, NULL, 'show_tree', 1),
(5, 9, 'supplier_payment', NULL, NULL, 'supplier_payment', 1),
(6, 9, 'customer_receive', NULL, NULL, 'customer_receive', 1),
(7, 9, 'debit_voucher', NULL, NULL, 'debit_voucher', 1),
(8, 9, 'credit_voucher', NULL, NULL, 'credit_voucher', 1),
(9, 9, 'voucher_approval', NULL, NULL, 'aprove_v', 1),
(10, 9, 'contra_voucher', NULL, NULL, 'contra_voucher', 1),
(11, 9, 'journal_voucher', NULL, NULL, 'journal_voucher', 1),
(12, 9, 'report', NULL, NULL, 'ac_report', 1),
(13, 9, 'cash_book', NULL, NULL, 'cash_book', 1),
(14, 9, 'Inventory_ledger', NULL, NULL, 'inventory_ledger', 1),
(15, 9, 'bank_book', NULL, NULL, 'bank_book', 1),
(16, 9, 'general_ledger', NULL, NULL, 'general_ledger', 1),
(17, 9, 'trial_balance', NULL, NULL, 'trial_balance', 1),
(18, 9, 'cash_flow', NULL, NULL, 'cash_flow_report', 1),
(19, 9, 'coa_print', NULL, NULL, 'coa_print', 1),
(21, 3, 'category', NULL, NULL, 'manage_category', 1),
(22, 3, 'add_product', NULL, NULL, 'create_product', 1),
(23, 3, 'import_product_csv', NULL, NULL, 'add_product_csv', 1),
(24, 3, 'manage_product', NULL, NULL, 'manage_product', 1),
(25, 2, 'add_customer', NULL, NULL, 'add_customer', 1),
(26, 2, 'manage_customer', NULL, NULL, 'manage_customer', 1),
(27, 2, 'credit_customer', NULL, NULL, 'credit_customer', 1),
(28, 2, 'paid_customer', NULL, NULL, 'paid_customer', 1),
(30, 3, 'unit', NULL, NULL, 'manage_unit', 1),
(31, 4, 'add_supplier', NULL, NULL, 'add_supplier', 1),
(32, 4, 'manage_supplier', NULL, NULL, 'manage_supplier', 1),
(33, 4, 'supplier_ledger', NULL, NULL, 'supplier_ledger_report', 1),
(35, 5, 'add_purchase', NULL, NULL, 'add_purchase', 1),
(36, 5, 'manage_purchase', NULL, NULL, 'manage_purchase', 1),
(37, 7, 'return', NULL, NULL, 'add_return', 1),
(38, 7, 'stock_return_list', NULL, NULL, 'return_list', 1),
(39, 7, 'supplier_return_list', NULL, NULL, 'supplier_return_list', 1),
(40, 7, 'wastage_return_list', NULL, NULL, 'wastage_return_list', 1),
(41, 11, 'tax_settings', NULL, NULL, 'tax_settings', 1),
(43, 6, 'stock_report', NULL, NULL, 'stock_report', 1),
(46, 8, 'closing', NULL, NULL, 'add_closing', 1),
(47, 8, 'closing_report', NULL, NULL, 'closing_report', 1),
(48, 8, 'todays_report', NULL, NULL, 'all_report', 1),
(49, 8, 'todays_customer_receipt', NULL, NULL, 'todays_customer_receipt', 1),
(50, 8, 'sales_report', NULL, NULL, 'todays_sales_report', 1),
(51, 8, 'due_report', NULL, NULL, 'retrieve_dateWise_DueReports', 1),
(52, 8, 'purchase_report', NULL, NULL, 'todays_purchase_report', 1),
(53, 8, 'purchase_report_category_wise', NULL, NULL, 'purchase_report_category_wise', 1),
(54, 8, 'sales_report_product_wise', NULL, NULL, 'product_sales_reports_date_wise', 1),
(55, 8, 'sales_report_category_wise', NULL, NULL, 'sales_report_category_wise', 1),
(56, 10, 'add_new_bank', NULL, NULL, 'add_bank', 1),
(57, 10, 'bank_transaction', NULL, NULL, 'bank_transaction', 1),
(58, 10, 'manage_bank', NULL, NULL, 'bank_list', 1),
(59, 14, 'generate_commission', NULL, NULL, 'commission', 1),
(60, 12, 'add_designation', NULL, NULL, 'add_designation', 1),
(61, 12, 'manage_designation', NULL, NULL, 'manage_designation', 1),
(62, 12, 'add_employee', NULL, NULL, 'add_employee', 1),
(63, 12, 'manage_employee', NULL, NULL, 'manage_employee', 1),
(64, 12, 'add_attendance', NULL, NULL, 'add_attendance', 1),
(65, 12, 'manage_attendance', NULL, NULL, 'manage_attendance', 1),
(66, 12, 'attendance_report', NULL, NULL, 'attendance_report', 1),
(67, 12, 'add_benefits', NULL, NULL, 'add_benefits', 1),
(68, 12, 'manage_benefits', NULL, NULL, 'manage_benefits', 1),
(69, 12, 'add_salary_setup', NULL, NULL, 'add_salary_setup', 1),
(70, 12, 'manage_salary_setup', NULL, NULL, 'manage_salary_setup', 1),
(71, 12, 'salary_generate', NULL, NULL, 'salary_generate', 1),
(72, 12, 'manage_salary_generate', NULL, NULL, 'manage_salary_generate', 1),
(73, 12, 'salary_payment', NULL, NULL, 'salary_payment', 1),
(74, 12, 'add_expense_item', NULL, NULL, 'add_expense_item', 1),
(75, 12, 'manage_expense_item', NULL, NULL, 'manage_expense_item', 1),
(76, 12, 'add_expense', NULL, NULL, 'add_expense', 1),
(77, 12, 'manage_expense', NULL, NULL, 'manage_expense', 1),
(78, 12, 'expense_statement', NULL, NULL, 'expense_statement', 1),
(79, 12, 'add_person_officeloan', NULL, NULL, 'add1_person', 1),
(80, 12, 'add_loan_officeloan', NULL, NULL, 'add_office_loan', 1),
(81, 12, 'add_payment_officeloan', NULL, NULL, 'add_loan_payment', 1),
(82, 12, 'manage_loan_officeloan', NULL, NULL, 'manage1_person', 1),
(83, 12, 'add_person_personalloan', NULL, NULL, 'add_person', 1),
(84, 12, 'add_loan_personalloan', NULL, NULL, 'add_loan', 1),
(85, 12, 'add_payment_personalloan', NULL, NULL, 'add_payment', 1),
(86, 12, 'manage_loan_personalloan', NULL, NULL, 'manage_person', 1),
(87, 15, 'manage_company', NULL, NULL, 'manage_company', 1),
(88, 15, 'add_user', NULL, NULL, 'add_user', 1),
(89, 15, 'manage_users', NULL, NULL, 'manage_user', 1),
(90, 15, 'language', NULL, NULL, 'add_language', 1),
(91, 15, 'currency', NULL, NULL, 'add_currency', 1),
(92, 15, 'setting', NULL, NULL, 'soft_setting', 1),
(93, 15, 'add_role', NULL, NULL, 'add_role', 1),
(94, 15, 'role_list', NULL, NULL, 'role_list', 1),
(95, 15, 'user_assign_role', NULL, NULL, 'user_assign', 1),
(96, 15, 'Permission', NULL, NULL, NULL, 1),
(97, 8, 'shipping_cost_report', NULL, NULL, 'shipping_cost_report', 1),
(98, 8, 'user_wise_sales_report', NULL, NULL, 'user_wise_sales_report', 1),
(99, 8, 'invoice_return', NULL, NULL, 'invoice_return', 1),
(100, 8, 'supplier_return', NULL, NULL, 'supplier_return', 1),
(101, 8, 'tax_report', NULL, NULL, 'tax_report', 1),
(102, 8, 'profit_report', NULL, NULL, 'profit_report', 1),
(103, 11, 'add_incometax', NULL, NULL, 'add_incometax', 1),
(104, 11, 'manage_income_tax', NULL, NULL, 'manage_income_tax', 1),
(105, 13, 'add_service', NULL, NULL, 'create_service', 1),
(106, 13, 'manage_service', NULL, NULL, 'manage_service', 1),
(107, 13, 'service_invoice', NULL, NULL, 'service_invoice', 1),
(108, 13, 'manage_service_invoice', NULL, NULL, 'manage_service_invoice', 1),
(109, 11, 'tax_report', NULL, NULL, 'tax_report', 1),
(110, 11, 'invoice_wise_tax_report', NULL, NULL, 'invoice_wise_tax_report', 1),
(111, 2, 'customer_advance', NULL, NULL, 'customer_advance', 1),
(112, 4, 'supplier_advance', NULL, NULL, 'supplier_advance', 1),
(113, 2, 'customer_ledger', NULL, NULL, 'customer_ledger', 1),
(114, 1, 'gui_pos', NULL, NULL, 'gui_pos', 1),
(115, 15, 'sms_configure', NULL, NULL, 'sms_configure', 1),
(116, 15, 'backup_restore', NULL, NULL, 'back_up', 1),
(117, 15, 'import', NULL, NULL, 'sql_import', 1),
(118, 15, 'restore', NULL, NULL, 'restore', 1),
(119, 16, 'add_quotation', NULL, NULL, 'add_quotation', 1),
(120, 16, 'manage_quotation', NULL, NULL, 'manage_quotation', 1),
(121, 16, 'add_to_invoice', NULL, NULL, 'add_to_invoice', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_information`
--

CREATE TABLE IF NOT EXISTS `supplier_information` (
  `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` text NOT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `emailnumber` varchar(200) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text,
  `state` text,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`supplier_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_product`
--

CREATE TABLE IF NOT EXISTS `supplier_product` (
  `supplier_pr_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(30) CHARACTER SET utf8 NOT NULL,
  `products_model` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `supplier_price` float DEFAULT NULL,
  PRIMARY KEY (`supplier_pr_id`),
  KEY `product_id` (`product_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `synchronizer_setting`
--

CREATE TABLE IF NOT EXISTS `synchronizer_setting` (
  `id` int(11) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_collection`
--

CREATE TABLE IF NOT EXISTS `tax_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `relation_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_settings`
--

CREATE TABLE IF NOT EXISTS `tax_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_value` float NOT NULL,
  `tax_name` varchar(250) NOT NULL,
  `nt` int(11) NOT NULL,
  `reg_no` varchar(100) NOT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE IF NOT EXISTS `units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `unit_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(15) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `address` text,
  `phone` varchar(20) DEFAULT NULL,
  `gender` int(2) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `last_name`, `first_name`, `company_name`, `address`, `phone`, `gender`, `date_of_birth`, `logo`, `status`) VALUES
(1, '2', 'User', 'Admin', NULL, NULL, NULL, NULL, NULL, 'http://localhost/saleserp_v9.8/assets/dist/img/profile_picture/profile.jpg', 1);


--
-- Table structure for table `user_login`
--

CREATE TABLE IF NOT EXISTS `user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(15) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` int(2) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES
(1, '2', 'admin@example.com', '41d99b369894eb1ec3f461135132d8bb', 1, NULL, 1);


-- --------------------------------------------------------

--
-- Table structure for table `web_setting`
--
CREATE TABLE IF NOT EXISTS `web_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL,
  `invoice_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `timezone` varchar(150) NOT NULL,
  `currency_position` varchar(10) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rtr` varchar(255) DEFAULT NULL,
  `captcha` int(11) DEFAULT '1' COMMENT '0=active,1=inactive',
  `site_key` varchar(250) DEFAULT NULL,
  `secret_key` varchar(250) DEFAULT NULL,
  `discount_type` int(11) DEFAULT '1',
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_setting`
--

INSERT INTO `web_setting` (`setting_id`, `logo`, `invoice_logo`, `favicon`, `currency`, `timezone`, `currency_position`, `footer_text`, `language`, `rtr`, `captcha`, `site_key`, `secret_key`, `discount_type`) VALUES
(1, 'http://localhost/saleserp_v9.5/./my-assets/image/logo/1206e551e00e501b3defafdb1416cdad.png', 'http://localhost/saleserp_v9.5/./my-assets/image/logo/b98567c5bfbbd1a6709a9b6ae5ff279a.png', 'https://softest8.bdtask.com/saleserp_sas_v-2/my-assets/image/logo/0bb2ee8377d8672d55b553ef11f07d69.png', '$', 'Asia/Dhaka', '0', 'CopyrightÂ© 2018-2019 Bdtask. All rights reserved.', 'english', '0', 1, '6LdiKhsUAAAAAMV4jQRmNYdZy2kXEuFe1HrdP5tt', '6LdiKhsUAAAAAMV4jQRmNYdZy2kXEuFe1HrdP5tt', 1);
