task :default => [:create_monitor_server]

desc 'use vagrant to create a monitor server'
task :create_monitor_server do

  puts '========= [Info] Start to set up a monitor server ========='

  # TODO
  # cause now vagrant gem install not support
  # env = Vagrant::Environment.new
  # env.cli("up")
  # env.cli("provision")

  exec 'vagrant up'
  exec 'vagrant provision'

  puts '========= [Info] Monitor server set done, the infomation as below ========='
end

desc 'set up a remote machine to be monitored'
task :add_nagios_agent do
  exec 'ansible-playbook provision/nagios-agent.yml -i provision/inventory/inventory'
end
