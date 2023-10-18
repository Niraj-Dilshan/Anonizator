class Colorate:
    @staticmethod
    def Horizontal(colors, text):
        length = len(colors)
        result = ""
        for i, char in enumerate(text):
            result += f"{colors[i % length]}{char}"
        return result

class Center:
    @staticmethod
    def XCenter(text):
        x = int((os.get_terminal_size().columns - len(text)) / 2)
        return f"\033[{x}C{text}"
        
print_center(){
    local x
    local y
    text="$*"
    x=$(( ($(tput cols) - ${#text}) / 2))
    echo -ne "\E[6n";read -sdR y; y=$(echo -ne "${y#*[}" | cut -d';' -f1)
    echo -ne "\033[${y};${x}f$*"
    x = (int(os.popen('tput cols', 'r').read()) - len(text)) // 2
    y = int(os.popen('tput lines', 'r').read())
    print(f"\033[{y};{x}f{text}")
}

print(Colorate.Horizontal("RED_TO_WHITE"), Center.XCenter(banner)))

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
    "RED_TO_WHITE": "\033[31,47m",
}

print_center "
      \033[31,47m__      _____  ___      ______    _____  ___    __   ________        __  ___________  ______     _______\033[0m   
     \033[31,47m/""\    (\"   \|"  \    /    " \  (\"   \|"  \  |" \ ("      "\      /""\("     _   ")/    " \   /"      \\033[0m  
    \033[31,47m/    \   |.\\   \    |  // ____  \ |.\\   \    | ||  | \___/   :)    /    \)__/  \\__/// ____  \ |:        |\033[0m 
   \033[31,47m/' /\  \  |: \.   \\  | /  /    ) :)|: \.   \\  | |:  |   /  ___/    /' /\  \  \\_ /  /  /    ) :)|_____/   )\033[0m 
  \033[31,47m//  __'  \ |.  \    \. |(: (____/ // |.  \    \. | |.  |  //  \__    //  __'  \ |.  | (: (____/ //  //      /\033[0m  
 \033[31,47m/   /  \\  \|    \    \ | \        /  |    \    \ | /\  |\(:   / "\  /   /  \\  \\:  |  \        /  |:  __   \\033[0m  
\033[31,47m(___/    \___)\___|\____\)  \"_____/    \___|\____\)(__\_|_)\_______)(___/    \___)\__|   \"_____/   |__|  \___)\033[0m 
                                                                                                                 
                                                                                                                 
                                                                                                                          
                                                             
                                                         
Anonizator started successfully!
Web url: http://localhost:1242
