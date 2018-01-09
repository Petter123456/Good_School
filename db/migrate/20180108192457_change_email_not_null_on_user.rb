class ChangeEmailNotNullOnUser < ActiveRecord::Migration[5.1]

  def up
    User.where(email: nil).each do |u|
      u.email = "#{u.name}#{u.id}@noemail.co" #Here we are saving an email to all that do not have emial in the current database, this in order to change so it cant be null below.
      u.save #Here we are just saving above
    change_column :users, :email, :string, null: false
  end
end

  def down
    change_column :users, :email, :string, null: true
  end


end
