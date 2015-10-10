require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'mysql',
  :database => 'YourDBNam',
  :username => 'YourDBUserName',
  :password => 'YourDBPassword',
  :encoding => 'utf8',
  :host => 'localhost'
  )
module AssetManagement
  class AssetCreator < ActiveRecord::Base
  end
  
  unless AssetCreator.table_exists?
    ActiveRecord::Schema.define do
      create_table :asset_creators do |t|
        t.string :type
        t.string :attachment_file_name
        t.string :attachment_content_type
        t.integer :attachment_file_size
        t.datetime :attachment_updated_at
        t.integer :assetable_id
        t.string :assetable_type
        t.integer :created_by
        t.integer :modified_by
        t.timestamps
      end
    end
  end
  
end