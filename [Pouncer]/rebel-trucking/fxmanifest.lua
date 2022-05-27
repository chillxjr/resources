fx_version 'cerulean'
game 'gta5'

author 'Blue_Rebel | Blue Rebel#3614'
description 'Trucking job made by Rebel Scripts.'
version '1.0'

shared_scripts {
	'config.lua',
	'locales/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua',
	'@mysql-async/lib/MySQL.lua',
	'@oxmysql/lib/MySQL.lua'
}

escrow_ignore {
  'locales/*.lua',
  'config.lua',
  'server/*.lua',
  'client/*.lua',
}

lua54 'yes'

dependency '/assetpacks'