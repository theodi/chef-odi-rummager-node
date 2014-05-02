default.serverdensity.device_group = "quirkafleeg"
default.user = "rummager"
default.rvm.default_ruby = "1.9.3-p545"


default.rvm.user_installs << {
  user: default.user,
  default_ruby: default.rvm.default_ruby,
  rubies: [default.rvm.default_ruby],
}


default.envbuilder.base_dir = "/home/#{default.user}"
default.envbuilder.base_dbi = "production"
default.envbuilder.owner = default.user
default.envbuilder.group = default.user

default.project_fqdn = "search.theodi.org"
default.git_project = "rummager"
