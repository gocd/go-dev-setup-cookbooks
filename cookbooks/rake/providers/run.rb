action :run do
  execute "rake" do
    cwd new_resource.working_directory
    command "rake #{new_resource.arguments}"
  end
end

