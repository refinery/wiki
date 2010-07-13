class Admin::WikiController < Admin::BaseController

  crudify :wiki_page, :title_attribute => :title

end
