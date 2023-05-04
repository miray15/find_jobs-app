class RenameSaalaryColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column(Inquiry, :salaary, :salary)
 
  end
end
