class CreateFilms < ActiveRecord::Migration

  def change

    create_table :films do |t|

      t.integer :category_id
      t.string  :name
      t.text    :synopsis

      t.timestamps

    end

  end

end
