class ModifyUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users,:external_link, :string
    add_column :users,:profile_text, :string


  end
end
