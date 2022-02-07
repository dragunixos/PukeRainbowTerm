#https://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
#https://chrisyeh96.github.io/2020/03/28/terminal-colors.html

#!/bin/bash
#
#   Este script muestra los colores brillantes (en la gama de 256 colores)
#   El comando "lsd" puede hacer uso de este rango.
#   Con "grc" se colorea, por ejempo: ip add, ping, journalctl...
#
#   ANSI Escape Codes utilizados
#   38;5;x - foreground color (256 colors, non-standard)
#   48;5;x - background color (256 colors, non-standard)

# Texto de prueba
T='g0a'

# Encabezado
echo -e "\n \033[1m               C       M       Y       K       W       R       G       B      *c      *m      *y      *k      *w      *r      *g      *b \033[0m";

# Escape Text Colors
for FGs in  '06m' '05m' '03m' '00m' '07m' '01m' '02m' '04m' \
            '14m' '13m' '11m' '08m' '15m' '09m' '10m' '12m';

do FG=${FGs// /}
    echo -en " $FGs \e[38;5;$FG  $T  "
        for BG in 6m 5m 3m 0m 7m 1m 2m 4m 14m 13m 11m 08m 15m 09m 10m 12m;
            do echo -en "$EINS \e[38;5;$FG\e[48;5;$BG  $T  \e[0m";
            done
    echo;
done

echo -e "\n * Colores brillantes";
echo;