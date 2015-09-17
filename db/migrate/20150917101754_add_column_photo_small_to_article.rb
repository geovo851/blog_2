class AddColumnPhotoSmallToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :photo_small, :string
    add_column :articles, :photo, :string
  end
end
