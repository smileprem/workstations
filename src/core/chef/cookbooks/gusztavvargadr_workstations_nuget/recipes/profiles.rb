profiles = node['gusztavvargadr_workstations_nuget'].nil? ? nil : node['gusztavvargadr_workstations_nuget']['profiles']
return if profiles.nil?

profiles.each do |profile_name, profile_options|
  gusztavvargadr_workstations_nuget_profile profile_name do
    profile_options profile_options
    action :install
  end
end