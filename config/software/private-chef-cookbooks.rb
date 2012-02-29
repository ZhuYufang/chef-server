name "private-chef-cookbooks"

source :path => File.expand_path("files/private-chef-cookbooks", Omnibus.root)

build do
  command "mkdir -p #{install_dir}/embedded/cookbooks"
  command "#{install_dir}/embedded/bin/rsync --delete -a ./ #{install_dir}/embedded/cookbooks/"
  command "ln -sf #{install_dir}/embedded/cookbooks/bin/private-chef-ctl #{install_dir}/bin/private-chef-ctl"
end
