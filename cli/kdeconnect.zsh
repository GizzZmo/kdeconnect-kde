#compdef kdeconnect-cli

_kdeconnect_device-ids() {
  _values "KDE Connect device id" "${(f)$(kdeconnect-cli --shell-device-autocompletion=zsh 2>/dev/null)}"
}

_arguments \
  '(-l --list-devices -a --list-available)'{-l,--list-devices}'[list all devices]' \
  '(-l --list-devices -a --list-available)'{-a,--list-available}'[list available (paired and reachable) devices]' \
  '--id-only[make --list-devices or --list-available print only the devices id, to ease scripting]' \
  '--refresh[search for devices in the network and re-establish connections]' \
  '(--pair --unpair)--pair[request pairing with the specified device]' \
  '--ring[find the device by ringing it.]' \
  '(--pair --unpair)--unpair[stop pairing to the specified device]' \
  '(--ping --ping-msg)--ping[send a ping to the device]' \
  '(--ping --ping-msg)--ping-msg[send a ping to the device with the specified message]:message' \
  '--share[share a file to the device]:file:_files' \
  '--list-notifications[display the notifications on the device]' \
  '--lock[lock the specified device]' \
  '--send-sms[send an SMS. Requires --destination]:message' \
  '--destination[specify phone number to send the SMS to]:phone number' \
  '(-d --device -n --name)'{-d,--device}'[specify device ID]:id:_kdeconnect_device-ids' \
  '(-d --device -n --name)'{-n,--name}'[specify device name]:name' \
  '--encryption-info[get encryption info about the device]' \
  '--list-commands[list remote commands and their ids]' \
  '--execute-command[execute a remote command]:command id' \
  '(-k --send-keys)'{-k,--send-keys}'[send keys to the specified device]' \
  "--my-id[display this device's id]" \
  "--photo[open the connected device's camera and transfer the photo]:file:_files" \
  '(-)'{-h,--help}'[display usage information]' \
  '(-)'{-v,--version}'[display version information]' \
  '(-)--author[show author information and exit]' \
  '(-)--license[show license information and exit]' \
  '--desktopfile[specify base file name of the desktop entry for this application]:file'
