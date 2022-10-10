fx_version 'bodacious'
games { 'gta5' }

author 'London Studios'
description 'A resource providing realistic fire tools'
version '1.0.0'

client_scripts{
    'config_firetools.lua',
    'cl_firetools.lua',
}

server_scripts {
    'config_firetools.lua',
    'sv_firetools.lua',
} 


files {
    'stream/firetools.ytyp',
    'index.html',
    'sounds/spreader.ogg',
    'sounds/fan.ogg', 
}

ui_page 'index.html'

data_file 'DLC_ITYP_REQUEST' 'stream/firetools.ytyp'