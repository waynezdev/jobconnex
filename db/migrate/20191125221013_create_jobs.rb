class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :content
      t.float :pay
      t.string :contact_name
      t.string :mobile
      t.string :wechat
      t.string :job_suburb
      t.references :user, foreign_key: true
      t.datetime :expiration_date

      t.timestamps
    end
  end
end
