class AddSlugToPages < ActiveRecord::Migration[6.0]
  def change
    add_column :pages, :slug, :string
  end
end
