class WikiController < ApplicationController

  before_filter :find_all_wikis
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @wiki in the line below:
    present(@page)
  end

  def show
    @wiki = WikiPage.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @wiki in the line below:
    present(@page)
  end

protected

  def find_all_wikis
    @wikis = WikiPage.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/wiki")
  end

end
