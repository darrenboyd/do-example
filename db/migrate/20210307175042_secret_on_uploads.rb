class SecretOnUploads < ActiveRecord::Migration[6.1]
  def change
    change_table(:uploads) do |t|
      t.boolean :secret_provided, null: false, default: true
    end
  end
end
