##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Infotrak-Oil-Commander" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-06-27
version "0.1"
description "Web-based system for managing oil samples through the laboratory process and presenting the results to customers. - Homepage: http://www.infotrak.com.au/"

# Google results as at 2011-06-27 #
# 21 for intitle:"Login - Powered By: Infotrak's Oil Commander"

# Dorks #
dorks [
'intitle:"Login - Powered By: Infotrak\'s Oil Commander"'
]

# Examples #
examples %w|
equipcom.cavpower.com/Equipcom/
https://secure.hastdeer.com.au/hdsosweb/Login.aspx
equipmanager.westrac.com.au/equipcom/
sos.zahid.com
https://oilcom.equipcom.finning.ca/
www.fuchslubricants.com.au/infologin.asp
203.47.145.83/EquipCom/Login.aspx
https://oil.cashmanequipment.com/equipcom/login.aspx
www.zfoillab.com/EquipCom/
lubewatch.co.nz/
mantrac-sos.com/EquipCom/
www.agipsampling.co.nz/
mcmnfluidsampling.com/EquipCom/
results.oillab.co.nz/
infotrak.ransome.com/Equipcom/
ilsoillab.co.nz/
totaloillab.co.nz/
equipcom.procmservices.com/equipcom/
fa.hopennmachinery.com/equipcom/
castrollabcheck.co.nz/
|

# Matches #
matches [

# Title
{ :text=>"<title>Login - Powered By: Infotrak's Oil Commander</title>" },

# div id="pnlContent_Shadow"
{ :text=>'<div id="pnlContent_Shadow" style="background-color:DarkGray;overflow:hidden;position:absolute;left:23;top:163;z-index:-1;width:98%;height:700 ;">' },

# Forgot password page
{ :text=>'<span id="lblMessage">After entering your email address and clicking on Continue, an email with your login details will be sent. Please allow some time for the email. If you do not receive it please contact your dealership. </span>' },

]

end


