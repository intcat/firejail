# Firejail profile for QMediathekView
# Description: Search, download or stream files from mediathek.de
# This file is overwritten after every install/update
# Persistent local customizations
include QMediathekView.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/QMediathekView
noblacklist ${HOME}/.local/share/QMediathekView

noblacklist ${HOME}/.config/mpv
noblacklist ${HOME}/.config/smplayer
noblacklist ${HOME}/.config/totem
noblacklist ${HOME}/.config/vlc
noblacklist ${HOME}/.config/xplayer
noblacklist ${HOME}/.local/share/totem
noblacklist ${HOME}/.local/share/xplayer
noblacklist ${HOME}/.mplayer

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

include whitelist-var-common.inc

caps.drop all
netfilter
# no3d
# nodbus
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
protocol unix,inet,inet6
seccomp
shell none
tracelog

disable-mnt
private-bin QMediathekView,mplayer,mpv,smplayer,totem,vlc,xplayer
private-cache
private-dev
# private-etc none
# private-lib
private-tmp

# memory-deny-write-execute - breaks on Arch
noexec ${HOME}
noexec /tmp
