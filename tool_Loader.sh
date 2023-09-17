#! /bin/bash
Banner () {
figlet Tools_Loader
echo "{Welcome to}-----{Tools_Loader}" | pv  -qL 20; 
}
Question_1 () {
echo "[1]---[Load the Tools]"
echo "[2]---[Run the Load Tools ]"
read -p '[Enter the Number]-[#$#]>' ans_1
case $ans_1 in
    [1] ) echo "[You selected]---[1]" | pv -qL 15;
          clear 
          load_tools 
     ;;
    [2] ) echo "[You selected]---[2]" | pv -qL 15;
          clear
          run_tools
esac

}
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

run_tools() {
    ls Tools_Data
    read -p '[Select The Tools name You Want To Run ]---[#@#]>' tool_select
    bash /Tools_Data/$tool_select/tools.sh

}


clear
Banner
Question_1