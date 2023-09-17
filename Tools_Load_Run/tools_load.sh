load_tools () {
read -p '[Enter Your Tools Name]---[#@#]>' name_Tools
read -p '[Enter Your Tool file Location]---[#@#]>' location_tools

tools_page () {
echo "echo '[Tools_Name]---[$name_Tools]'"
echo "bash $location_tools"
}
 mkdir  /Tools_Data/$name_Tools
 tools_page > /Tools_Data/$name_Tools/tools.sh
 chmod +x /Tools_Data/$name_Tools/*
}
load_tools 