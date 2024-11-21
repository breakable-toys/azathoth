class Page < ApplicationRecord
  has_many :embeds
  has_many :embedded_pages, through: :embeds, source: :embedded_page

  has_rich_text :content
end
