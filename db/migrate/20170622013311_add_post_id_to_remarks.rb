class AddPostIdToRemarks < ActiveRecord::Migration[5.1]
  def change
    add_column :remarks, :post_id, :integer
  end
end
