# group: System
# name: Disk Devices
# description: Inventory only scanner determining disk devices via facter 2. Probably won't work with facter 3+

mco inventory --script <(/bin/echo "
inventory do
  format '%s INVENTORY %s'
  fields { [ identity, facts['disks']] }
end
") | grep -v 'INVENTORY $'


