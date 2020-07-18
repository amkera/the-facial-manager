class UpdateEstheticians < ActiveRecord::Migration[6.0]
  def change
    add_column(:estheticians, :provider, :string, limit: 50, null: false, default: '')
    add_column(:estheticians, :uid, :string, limit: 500, null: false, default: '')
  end
end
