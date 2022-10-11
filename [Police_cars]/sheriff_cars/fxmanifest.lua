-- Resource Metadata
fx_version 'cerulean'
games { 'gta5' }

author 'NAT2K15'
description 'Custom merged scripts'

files {
    'data/**/carcols.meta', --this is for vehciles
	'data/**/carvariations.meta', --this is for vehciles
	'data/**/handling.meta', --this is for vehciles
	'data/**/vehiclelayouts.meta', --this is for vehciles
	'data/**/vehicles.meta', --this is for vehciles
	'data/**/peds.meta', --this is for k9ped
}

data_file 'VEHICLE_LAYOUTS_FILE'	'data/**/vehiclelayouts.meta' --this is for vehciles
data_file 'HANDLING_FILE'			'data/**/handling.meta' --this is for vehciles
data_file 'VEHICLE_METADATA_FILE'	'data/**/vehicles.meta'--this is for vehciles
data_file 'CARCOLS_FILE'			'data/**/carcols.meta'--this is for vehciles
data_file 'VEHICLE_VARIATION_FILE'	'data/**/carvariations.meta'--this is for vehciles
data_file 'PED_METADATA_FILE'           'data/**/peds.meta' --this is for k9ped
