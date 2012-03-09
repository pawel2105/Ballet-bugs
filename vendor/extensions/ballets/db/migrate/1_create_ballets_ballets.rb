class CreateBalletsBallets < ActiveRecord::Migration

  def up
    create_table :refinery_ballets do |t|
      t.string :title
      t.datetime :date
      t.integer :photo_id
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-ballets"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/ballets/ballets"})
    end

    drop_table :refinery_ballets

  end

end
