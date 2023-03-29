class RenameColumnAndChangeDataType < ActiveRecord::Migration[6.1]
  def change
    rename_column :images, :picture, :avatar
    change_column :images, :avatar, :string
  end
end
