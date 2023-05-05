# blocklist
Greetings to Robin-Sch / blocklist 

First of all you have to execute ./select.sh to select inside the whiptail the type of repositories you want to block,
inside of $input = ./lists.txt which be used in ./generate.sh that it is simply a while doing curl's to the repositories that are in the lists.txt generated above.

To later make a dump into a temporary file ( $TEMPFILE = dumpfile ) which will later be purified and dumped ( $output = ./hosts.txt ) to avoid domain repetitions. And avoid making the file heavier than necessary. And at the end the count of the domain names entered into the file will appear.

Remember that it can give you permissions problems therefore:

  ~/sudo chmod 744 select.sh
  ~/sudo chmod 744 generate.sh

A page that has helped me add even more lists:

  - https://sefinek.net/pihole-blocklist-customization
