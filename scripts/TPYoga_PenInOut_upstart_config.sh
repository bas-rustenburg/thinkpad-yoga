cat >$HOME/.config/upstart/TPYoga_PenInOut.conf  <<CONF
start on desktop-start
stop on desktop-end

script
  bash /home/bas/Git/bas-rustenburg/thinkpad-yoga/scripts/TPYoga_PenInOut.sh
end script
CONF
