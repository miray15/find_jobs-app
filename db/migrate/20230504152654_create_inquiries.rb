class CreateInquiries < ActiveRecord::Migration[7.0]
  def change
    create_table :inquiries do |t|
      t.string :title
      t.string :description
      t.string :company
      t.integer :salaary
      t.string :remote
      t.string :next_steps

      t.timestamps
    end
  end
end
