# Vlad the Deployer recipe for NGiNX.
#
# Author: Kim Burgestrand <http://github.com/Burgestrand>
# Date: 24th September 2010
# License: X11 License (MIT License, same as Vlad — details in LICENSE)
# URL: http://github.com/Burgestrand/vlad-nginx
require 'vlad'

namespace :vlad do
  set :web_command, "nginx"
  set :nginx_use_sudo, false
 
  def with_sudo(cmd)
    if nginx_use_sudo
      sudo cmd
    else
      run cmd
    end
  end

  namespace :web do
    desc "Gracefully stop the web servers."
    remote_task :quit, :roles => :web do
      with_sudo "#{web_command} -s quit"
    end
    
    desc "Instantly kill the web servers."
    remote_task :kill, :roles => :web do
      with_sudo "#{web_command} -s stop"
    end
    
    desc "Reload web server configuration."
    remote_task :reload, :roles => :web do
      with_sudo "#{web_command} -s reload"
    end
    
    desc "Reopen web server logs."
    remote_task :reopen, :roles => :web do
      with_sudo "#{web_command} -s reopen"
    end
    
    desc "Start the web servers."
    remote_task :start, :roles => :web do
      with_sudo web_command
    end
  end
end
