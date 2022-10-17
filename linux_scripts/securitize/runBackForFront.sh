setxkbmap latam
SECURITIZE_ROOT="/home/yari/Desktop/securitize"

execute_repo(){ # WORK_DIR, TERMINAL_TITLE
    gnome-terminal --title $2 --working-directory "${SECURITIZE_ROOT}/${1}"
    xdotool sleep 1 type "setxkbmap latam && nvm use && npm start"
    xdotool key KP_Enter
    sleep 5
    xdotool getactivewindow set_desktop_for_window 1
}

start_vpn(){
    gnome-terminal --title "VPN"
    xdotool sleep 1 type "./start-vpn.sh"
    xdotool key KP_Enter
    xdotool sleep 1 type "444"
    xdotool key KP_Enter
    xdotool getactivewindow set_desktop_for_window 1
}

streamdeck(){
    gnome-terminal --title "STREAMDECK"
    xdotool sleep 1 type "streamdeck"
    xdotool key KP_Enter
    xdotool getactivewindow set_desktop_for_window 1
}

execute_repo "web-api" "web-api"
execute_repo "cash-account/account-gw" "account-gw"
# execute_repo "cash-account/ca-investor-api" "ca-investor-api"
execute_repo "cash-account/ca-transaction-api" "ca-transaction-api"
execute_repo "/cash-account/account-fe" "account-fe"
execute_repo "cash-account/ca-transfer-method-api" "ca-transfer-method-api"
execute_repo "ats-bank-api" "ats-bank-api"
execute_repo "securitize-id-fe" "securitize-id-fe"
execute_repo "/cash-account/ca-investor-api" "ca-investor-api"
start_vpn
streamdeck

# code "${SECURITIZE_ROOT}/cash-account/account-fe"
# code "${SECURITIZE_ROOT}/ats-bank-api"
# code "${SECURITIZE_ROOT}/cash-account/ca-investor-api"
