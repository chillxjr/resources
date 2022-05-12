-- This resource is part of the default Cfx.re asset pack (cfx-server-data)
-- Altering or recreating for local use only is strongly discouraged.
fx_version 'cerulean'
game 'gta5'
version '1.0.0'
author 'Cfx.re <root@cfx.re>'
description 'Chills object spawner'
repository 'https://github.com/citizenfx/cfx-server-data'

shared_script 'config.lua'

client_script 'client/main.lua'

server_scripts {
    'server/main.lua'
}

