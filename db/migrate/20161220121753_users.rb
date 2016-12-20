class Users < ActiveRecord::Migration[5.0]
    def change
      create_table :users do |t|
        t.string :user_id, :first_name, :last_name, :service, :user_tel, :user_mail, :office, limit:45
        t.text :certificate_name, :password
        t.timestamps
      end
  end
end
