class AddKindToSecretions < ActiveRecord::Migration
  def change
    add_column :secretions, :kind, :string
  end
end
