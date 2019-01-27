description 'NITRO'

dependency 'vrp'

server_script {
	'@vrp/lib/utils.lua',
	'server.lua'
}

client_script {
	'@vrp/lib/utils.lua',
	'client.lua'
}
