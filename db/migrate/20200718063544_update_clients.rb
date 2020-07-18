class UpdateClients < ActiveRecord::Migration[6.0]
  def change
    add_column(:clients, :name, :string)
    add_column(:clients, :email, :string)
    add_column(:clients, :phone_number, :integer)
  end
end
