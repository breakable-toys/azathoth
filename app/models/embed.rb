class Embed < ApplicationRecord
  include ActionText::Attachable

  belongs_to :page
  belongs_to :embedded_page, class_name: "Page"

  def self.to_missing_attachable_partial_path
    "embeds/missing_embeddable"
  end

  def to_attachable_partial_path
    "embeds/embed"
  end
end
