fx_version 'cerulean'
game 'gta5'

author 'Cl9s4bl3'
description 'Simple setfuel command for LegacyFuel - ESX'
version '1.0.0'

lua54 'on'

client_scripts {
    'client.lua',
}

server_scripts {
    '@es_extended/locale.lua',
    'server.lua',
}

shared_script '@ox_lib/init.lua'

dependencies {
    'es_extended',
    'ox_lib',
}

