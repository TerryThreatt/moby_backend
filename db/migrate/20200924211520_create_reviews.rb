class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
        t.bigint :book_id
        t.string :body
        t.index ["book_id"], name: "index_reviews_on_book_id"

        t.timestamps
    end
  end
end