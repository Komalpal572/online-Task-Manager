# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[8.1]
  def self.up
    change_table :users do |t|
      ## These columns already exist — skip them
      # t.string :email,              null: false, default: ""
      # t.string :encrypted_password, null: false, default: ""

      ## Recoverable (already present)
      # t.string   :reset_password_token
      # t.datetime :reset_password_sent_at

      ## Rememberable (already present)
      # t.datetime :remember_created_at

      ## Optional Devise modules (uncomment later if needed)
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email

      # t.integer  :failed_attempts, default: 0, null: false
      # t.string   :unlock_token
      # t.datetime :locked_at
    end

    # Add indexes if not already present
    add_index :users, :email, unique: true unless index_exists?(:users, :email)
    add_index :users, :reset_password_token, unique: true unless index_exists?(:users, :reset_password_token)
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
