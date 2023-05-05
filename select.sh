#!/bin/bash

		# Variables

		input=./lists.txt

		# En caso de que el directorio actual ya exista un lists.txt cambialo por el nuevo generado.

		if [ -f "$input" ]; then rm $input; fi
		touch $input

		# Archivo hosts del autor de los Scripts.

		echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" >> $input

		# Es necesario instalar previamente la herramienta / whiptail /
		#	< sudo apt install whiptail >

		# Mediante la siguiente estructura del whiptail crearemos un menú interactivo,
		# el cual te dejará que escojas las categorias que quieras añadir a tu lists.txt.
		# Por ejemplo si lo quieres escoger las categorias de gambling y porno, las seleccionarás
		# mediante ESPACIO y los repositorios referentes a esas categorias comprimidos en el
		# bloque correspondiente del / case /.

		# Menú con whiptail.
			# activado=whiptail en modo checklist "texto ejemplo" $(declaramos longitud máxima
			# de nuestra terminal y eliminamos la opción de cancelar la orden.

		enabled=$(whiptail --checklist "Selecciona las categorías que desees bloquear:" $(stty size) 10 --nocancel \
		"General" "" off \
		"Anuncios" "" off \
		"Tracking" "" off \
		"Gambling" "" off \
		"Porno" "" off \
		"Social" "" off \
		"Scam" "" off \
		"Ilegal" "" off \
		"Extremo" "" off \
                "VideoJuegos" "" off \
  		3>&1 1>&2 2>&3)

			case $enabled in
				*General* )
				echo "https://raw.githubusercontent.com/PolishFiltersTeam/KADhosts/master/KADhosts.txt" >> $input
				echo "https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Spam/hosts" >> $input
				echo "https://v.firebog.net/hosts/static/w3kbl.txt" >> $input
				echo "https://raw.githubusercontent.com/matomo-org/referrer-spam-blacklist/master/spammers.txt" >> $input
				echo "https://someonewhocares.org/hosts/zero/hosts" >> $input
				echo "https://raw.githubusercontent.com/VeleSila/yhosts/master/hosts" >> $input
				echo "https://winhelp2002.mvps.org/hosts.txt" >> $input
				echo "https://v.firebog.net/hosts/neohostsbasic.txt" >> $input
				echo "https://raw.githubusercontent.com/RooneyMcNibNug/pihole-stuff/master/SNAFU.txt" >> $input
				echo "https://paulgb.github.io/BarbBlock/blacklists/hosts-file.txt" >> $input
				echo "https://zerodot1.gitlab.io/CoinBlockerLists/hosts_browser" >> $input
				echo "https://raw.githubusercontent.com/lightswitch05/hosts/master/docs/lists/amp-hosts-extended.txt" >> $input
				echo "https://raw.githubusercontent.com/lightswitch05/hosts/master/docs/lists/hate-and-junk-extended.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/abuse.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/redirect.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/torrent.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/basic.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/smart-tv.txt" >> $input
				echo "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/hosts/pro.txt" >> $input
				echo "https://raw.githubusercontent.com/AdroitAdorKhan/antipopads-re/master/formats/hosts.txt" >> $input
				;;&
				*Anuncios* )
				echo "https://adaway.org/hosts.txt" >> $input
				echo "https://v.firebog.net/hosts/AdguardDNS.txt" >> $input
				echo "https://v.firebog.net/hosts/Admiral.txt" >> $input
				echo "https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt" >> $input
				echo "https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt" >> $input
				echo "https://v.firebog.net/hosts/Easylist.txt" >> $input
				echo "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext" >> $input
				echo "https://raw.githubusercontent.com/FadeMind/hosts.extras/master/UncheckyAds/hosts" >> $input
				echo "https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts" >> $input
				echo "https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts" >> $input
				echo "https://raw.githubusercontent.com/lightswitch05/hosts/master/docs/lists/ads-and-tracking-extended.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/ads.txt" >> $input
				echo "https://hosts.oisd.nl/basic/" >> $input
				echo "https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/Frellwits-Swedish-Hosts-File.txt" >> $input
				;;&
				*Tracking* )
				echo "https://v.firebog.net/hosts/Easyprivacy.txt" >> $input
				echo "https://v.firebog.net/hosts/Prigent-Ads.txt" >> $input
				echo "https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.2o7Net/hosts" >> $input
				echo "https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt" >> $input
				echo "https://hostfiles.frogeye.fr/firstparty-trackers-hosts.txt" >> $input
				echo "https://hostfiles.frogeye.fr/multiparty-trackers-hosts.txt" >> $input
				echo "https://www.github.developerdan.com/hosts/lists/ads-and-tracking-extended.txt" >> $input
				echo "https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/android-tracking.txt" >> $input
				echo "https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV.txt" >> $input
				echo "https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/AmazonFireTV.txt" >> $input
				echo "https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-blocklist.txt" >> $input
				echo "https://raw.githubusercontent.com/lightswitch05/hosts/master/docs/lists/tracking-aggressive-extended.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/tracking.txt" >> $input
				echo "https://justdomains.github.io/blocklists/lists/easyprivacy-justdomains.txt" >> $input
				echo "https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt" >> $input
				echo "https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/android-tracking.txt" >> $input
				;;&
				*Gambling* )
				echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling/hosts" >> $input
				echo "https://blocklistproject.github.io/Lists/gambling.txt" >> $input
				echo "https://raw.githubusercontent.com/blocklistproject/Lists/master/alt-version/gambling-nl.txt" >> $input
				;;&
				*Porno* )
				echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn/hosts" >> $input
				echo "https://raw.githubusercontent.com/chadmayfield/my-pihole-blocklists/master/lists/pi_blocklist_porn_all.list" >> $input
				echo "https://raw.githubusercontent.com/chadmayfield/my-pihole-blocklists/master/lists/pi_blocklist_porn_top1m.list" >> $input
				echo "https://blocklistproject.github.io/Lists/porn.txt" >> $input
				echo "https://raw.githubusercontent.com/Sinfonietta/hostfiles/master/pornography-hosts" >> $input
				;;&
				*Social* )
				echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/social/hosts" >> $input
				echo "https://raw.githubusercontent.com/anudeepND/blacklist/master/facebook.txt" >> $input
				echo "https://raw.githubusercontent.com/lightswitch05/hosts/master/docs/lists/facebook-extended.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/facebook.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/tiktok.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/whatsapp.txt" >> $input
				;;&
				*Scam* )
				echo "https://blocklistproject.github.io/Lists/malware.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/ransomware.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/crypto.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/fraud.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/phishing.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/scam.txt" >> $input
		 		echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews/hosts" >> $input
				;;&
				*Ilegal* )
				echo "https://blocklistproject.github.io/Lists/drugs.txt" >> $input
				echo "https://blocklistproject.github.io/Lists/piracy.txt" >> $input
				;;&
				*Extremo* )
				echo "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/hosts/ultimate.txt" >> $input
				;;&
				*VideoJuegos* )
				echo "https://raw.githubusercontent.com/nickoppen/pihole-blocklists/master/blocklist-omegle.txt" >> $input
				echo "https://raw.githubusercontent.com/nickoppen/pihole-blocklists/master/blocklist-snapchat.txt" >> $input
				echo "https://cdn.sefinek.net/resources/PiHole-Blocklist-Collection/blocklist/sites/riotgames.txt" >> $input
                                echo "https://cdn.sefinek.net/resources/PiHole-Blocklist-Collection/blocklist/games/league-of-legends.txt" >> $input
				echo "https://cdn.sefinek.net/resources/PiHole-Blocklist-Collection/blocklist/games/valorant.txt" >> $input
                                echo "https://cdn.sefinek.net/resources/PiHole-Blocklist-Collection/blocklist/apps/discord.txt" >> $input
				;;&
			esac
			
		echo "" >> $input
