class EmbedsController < ApplicationController
  before_action :set_pages, only: [ :new ]

  def new
    # todo: what if no params?
    @embed = Embed.new(page_id: @page.id, embedded_page_id: @embedded_page.id)
  end

  def create
    @embed = Embed.create! embed_params
  end

  private

  def set_pages
    @page = Page.find(params[:page_id])
    @embedded_page = Page.find(params[:embedded_page_id])
  end

  def embed_params
    params.expect(embed: [ :title, :page_id, :embedded_page_id ])
  end
end
