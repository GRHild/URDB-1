class AddMovieReferenceToComment < ActiveRecord::Migration
  def change
    change_table :comments do |c|
      t.references :movie 
    end
  end
end
