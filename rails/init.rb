Refinery::Plugin.register do |plugin|
  plugin.title = "Refinerycms Wikis"
  plugin.name = "refinerycms_wikis"
  plugin.description = "Manage Refinerycms Wikis"
  plugin.version = 1.0
  plugin.activity = {
    :class => Refinerycms-wiki,
    :url_prefix => "edit",
    :title => 'title'
  }
  # this tells refinery where this plugin is located on the filesystem and helps with urls.
  plugin.directory = directory
end
