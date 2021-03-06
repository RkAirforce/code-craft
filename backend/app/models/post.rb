class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many :post_tag_maps, dependent: :destroy
  has_many :tags, through: :post_tag_maps
  has_many :comments, dependent: :destroy
  has_many :event, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  # カラムのバリデーション
  validates :title, presence: true, length: { maximum: 50, allow_blank: true }
  validates :rate, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 5.0 }
  validates :content, presence: true

  def images_data
    url_list = []
    images.each { |image| url_list.push({ id: image.blob_id, url: url_for(image) }) } if images.attached?
    url_list
  end

  def save_tags(tags)
    current_tags = self.tags.pluck(:name) unless self.tags.nil?
    old_tags = current_tags - tags
    new_tags = tags - current_tags

    # すでに登録されているがフォームに含まれていない古いタグの削除
    old_tags.each do |old_name|
      self.tags.delete Tag.find_by(name: old_name)
    end

    # タグの生成
    new_tags.each do |new_name|
      user_tag = Tag.find_or_create_by(name: new_name)
      self.tags << user_tag
    end
  end
end
