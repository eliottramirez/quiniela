class RemoveStageFromMatch < ActiveRecord::Migration[7.0]
  def change
    remove_column :matches, :stage, :string
  end
end
