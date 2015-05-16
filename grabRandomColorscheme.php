<?php
$home    = '/home/matt';
$bundles = $home.'/dotfiles/bundles';

$dirs = array(
	"$bundles/vim-colorschemes/colors",
	"$bundles/vim-colors_atelier-schemes/colors",
	"$home/.vim/colors",
);

// Colour schemes that are just awefule
$blacklist = array(
	'adobe',
	'nerv-ous',
	'256-grayvim',
	'zephyr', 'miko',
	'golded',
	'potts',
);

// Not yet used, but a place to save the ones
// I find interesting
$whitelist = array(
	'doorhinge',
	'gor',
	'ecostation',
	'herald',
	'swamplight',
	'summerfruits256',
	'moss',
);

// TODO not used yet
$mode = array(
	'256-grayvim'=>'dark',
);

// Build cache
$files = '';
exec("find ". join(' ', $dirs) ." -type f -iname '*.vim' -exec basename \{\} \;", $files);
//print_r($files);

$scheme = '';
while (true) {
	$scheme=$files[rand(0, count($files)-1)];
	$scheme = preg_replace('/\.vim$/', '', $scheme);
	$scheme = trim($scheme);
	if (array_search($scheme, $blacklist) === false) break;
}

print $scheme;

// vim: sw=4 ts=4 noet :