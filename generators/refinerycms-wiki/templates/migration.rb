class CreateWikiStructure < ActiveRecord::Migration

  def self.up
    create_table :wiki_page do |t|
      t.string :title
      t.text :body
      t.integer :category_id
      t.integer :version
      t.integer :position

      t.timestamps
    end

    add_index :wiki_page, :id

    load(Rails.root.join('db', 'seeds', 'refinerycms_wikis.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "refinerycms_wikis"})

    Page.find_all_by_link_url("/wiki").each do |page|
      page.destroy!
    end

    drop_table :wiki_page
  end

end
