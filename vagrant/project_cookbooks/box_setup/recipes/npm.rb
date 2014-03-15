# If NodeJS is installed, autofix the self-signed cert issue for NPM
# https://twitter.com/npmjs/status/439279809307242496
if node[:box_setup][:nodejs][:install]
  execute "Auto-correcting NPM Self-Signed Cert Issue..." do
    cwd		'/home/vagrant'
    user 	'root'
    command '/usr/local/bin/npm config set ca=""'
    action	:run
  end
end

# If nodejs is enabled, install GruntJS?
if node[:box_setup][:nodejs][:install] && node[:box_setup][:nodejs][:gruntjs]
  execute "Installing GruntJS via NPM..." do
    cwd     '/home/vagrant'
    user    'root'
    command '/usr/local/bin/npm install -g grunt-cli'
    action  :run
  end
end

# If nodejs enabled, install bower?
if node[:box_setup][:nodejs][:install] && node[:box_setup][:nodejs][:bower]
  execute "Installing Bower via NPM..." do
    cwd		'/home/vagrant'
    user	'root'
    command	'/usr/local/bin/npm install -g bower'
    action	:run
  end
end

# If nodejs enabled, auto-install all dependencies in package.json?
if node[:box_setup][:nodejs][:install] && node[:box_setup][:nodejs][:autoinstall_npm_packages]
  execute "Auto-installing all NPM dependencies in package.json..." do
    cwd		'/home/vagrant/app'
    user	'root'
    command	'/usr/local/bin/npm install'
    action	:run
  end
end