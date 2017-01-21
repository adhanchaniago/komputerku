<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$config['pesan_sukses'] = 'Pemutakhiran data sukses !';
$config['pesan_gagal'] = 'Pemutakhiran data gagal !';
$config['site'] = array(
	// Default page title
	// (set empty then MY_Controller will automatically generate one according to controller / action)
	'appl' => 'Portal',
	'appl_jenis' => 'Akademik',
	'app_version' => 'CMS Kampus V.2.0',
	'copyright' => 'TIM IT UNISNU Jepara',
	'production_year' => date('Y'),

	// Google Analytics User ID (UA-XXXXXXXX-X)
	'ga_id' => '',

	// For debug purpose (available only when ENVIRONMENT = 'development')
	'debug' => array(
		'view_data'		=> FALSE,	// whether to display MY_Controller's mViewData at page end
		'profiler'		=> FALSE,	// whether to display CodeIgniter's profiler at page end
	),
);