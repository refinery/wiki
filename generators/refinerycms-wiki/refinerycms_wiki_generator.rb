class WikiGenerator < Rails::Generator::NamedBase

  def initialize(*runtime_args)
    # set first argument to the table's name so that the user doesn't have to pass it in.
    runtime_args[0] = ["wiki_pages"]
    super(*runtime_args)
  end

  def banner
    "Usage: script/generate wiki"
  end

  def manifest
    record do |m|
      m.migration_template 'migration.rb', 'db/migrate',
        :migration_file_name => "create_structure_for_wiki",
        :assigns => {
          :migration_name => "CreateStructureForWiki",
          :table_name => "wiki_pages",
          :attributes => [
            Rails::Generator::GeneratedAttribute.new("title", "string"),
            Rails::Generator::GeneratedAttribute.new("body", "text"),
            Rails::Generator::GeneratedAttribute.new("integer", "category_id"),
            Rails::Generator::GeneratedAttribute.new("integer", "version"),
            Rails::Generator::GeneratedAttribute.new("integer", "position")
          ]
        }
    end
  end

end if defined?(Rails::Generator::NamedBase)
