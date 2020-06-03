# frozen_string_literal: true

class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :title
      t.string :description
      t.string :userId # non ruby snake case to match js id
      t.string :tripDate
      t.string :incidentLocation
      t.string :dispatchTime
      t.string :onSceneTime
      t.string :narrative
      t.string :arrivalDestTime
      t.string :leftSceneTime
      t.string :backInServiceTime
      t.string :startMiles
      t.string :endMiles
      t.string :totalMiles
      t.string :medicSig
      t.boolean :admin, default: false, null: false
      t.timestamps
    end
  end
end
