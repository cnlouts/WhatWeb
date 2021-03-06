##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "PHP-Server-Monitor" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-04-21
version "0.1"
description "PHP Server Monitor is a script that checks whether the servers on your list are up and running on the selected ports.It comes with a web based user interface where you can add and remove servers and users from the MySQL database. - Homepage: http://sourceforge.net/projects/phpservermon/"

# 27 for intitle:"PHP Server Monitor" "Powered by PHP Server Monitor"

# Dorks #
dorks [
'intitle:"PHP Server Monitor" "Powered by PHP Server Monitor"'
]

# Examples #
examples %w|
monitor.i20a.net
bc-apps1.com/monitoring/
www.hoebe.be/test/
www.cyberpunk.co.za
adsbake180.com/monitor/
monitor.gundari.net
www.philnichols.co.uk/watcher/
encompassinteractive.com
|

# Matches #
matches [

# Default title
{ :text=>'<title>PHP Server Monitor</title>' },

# Default image html
{ :text=>'<div class="opensource"><a href="index.php"><img src="img/opensource.png" alt="Open Source" height="101px" /></a></div>' },

# Version detection # Powered by footer
{ :version=>/Powered by <a href="http:\/\/phpservermon\.sourceforge\.net" target="_blank">PHP Server Monitor v([\d\.]+)<\/a><br\/>/ },

]

end


