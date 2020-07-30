class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :discription
    end
  end
end

# class AddTimestampsToArticle < ActiveRecord::Migration[6.0]
#  def change
#    add_column :articles, :discription_of_art, :discription
#    add_column :articles, :created_at, :datetime
#    add_column :articles, :updated_at, :datetime
#  end
#end
