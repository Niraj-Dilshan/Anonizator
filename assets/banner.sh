print_center(){
    local x
    local y
    text="$*"
    x=$(( ($(tput cols) - ${#text}) / 2))
    echo -ne "\E[6n";read -sdR y; y=$(echo -ne "${y#*[}" | cut -d';' -f1)
    echo -ne "\033[${y};${x}f$*"
}

print(Colorate.Horizontal(COLOR_CODE["PINK"], Center.XCenter(banner)))

COLOR_CODE = {
    "RESET": "\033[0m",  
    "UNDERLINE": "\033[04m", 
    "GREEN": "\033[32m",     
    "YELLOW": "\033[93m",    
    "RED": "\033[31m",       
    "CYAN": "\033[36m",     
    "BOLD": "\033[01m",        
    "PINK": "\033[95m",
    "URL_L": "\033[36m",       
    "LI_G": "\033[92m",      
    "F_CL": "\033[0m",
    "DARK": "\033[90m",
    "WHITE": "\033[96",
}

print_center "
      ${COLOR_CODE["PINK"]}__      _____  ___      ______    _____  ___    __   ________        __  ___________  ______     _______${COLOR_CODE["RESET"]}   
     ${COLOR_CODE["PINK"]}/""\    (\"   \|"  \    /    " \  (\"   \|"  \  |" \ ("      "\      /""\("     _   ")/    " \   /"      \${COLOR_CODE["RESET"]}  
    ${COLOR_CODE["PINK"]}/    \   |.\\   \    |  // ____  \ |.\\   \    | ||  | \___/   :)    /    \)__/  \\__/// ____  \ |:        |${COLOR_CODE["RESET"]} 
   ${COLOR_CODE["PINK"]}/' /\  \  |: \.   \\  | /  /    ) :)|: \.   \\  | |:  |   /  ___/    /' /\  \  \\_ /  /  /    ) :)|_____/   )${COLOR_CODE["RESET"]} 
  ${COLOR_CODE["PINK"]}//  __'  \ |.  \    \. |(: (____/ // |.  \    \. | |.  |  //  \__    //  __'  \ |.  | (: (____/ //  //      /${COLOR_CODE["RESET"]}  
 ${COLOR_CODE["PINK"]}/   /  \\  \|    \    \ | \        /  |    \    \ | /\  |\(:   / "\  /   /  \\  \\:  |  \        /  |:  __   \${COLOR_CODE["RESET"]}  
${COLOR_CODE["PINK"]}(___/    \___)\___|\____\)  \"_____/    \___|\____\)(__\_|_)\_______)(___/    \___)\__|   \"_____/   |__|  \___)${COLOR_CODE["RESET"]} 
                                                                                                                 
                                                                                                                          
                                                             
                                                         
${COLOR_CODE["PINK"]}Anonizator started successfully!${COLOR_CODE["RESET"]}
${COLOR_CODE["PINK"]}Web url: http://localhost:1242${COLOR_CODE["RESET"]}
