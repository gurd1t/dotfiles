set fish_greeting

# colours
set fish_color_normal '#458588'
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command '#458588'
set fish_color_error '#ff6c6b'
set fish_color_param '#8ec07c'

# pacman and yay
alias ins='sudo pacman -S'
alias upins='sudo pacman -Sy'
alias rem='sudo pacman -Rs'
alias update='sudo pacman -Syyu'
alias search='sudo pacman -Qn | grep '
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'

# colorize grep output (good for log files)
alias grep='grep --color=auto'

# text editor
alias v='nano'
alias sv='sudo nano'

# programs
alias n='sudo rmmod nvidia_uvm && sudo modprobe nvidia_uvm'
alias r='sudo /mnt/usb/Linux/ryzenadj -a 25000 -b 25000 -c 25000 -f 85'

# autostart
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec ./wayexec
    end
end
