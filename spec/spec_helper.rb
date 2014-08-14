require 'rspec'
require 'doctor'
require 'patient'
require 'specialty'
require 'insurance'
require 'pg'


DB = PG.connect(:dbname => 'test_doctor_office')

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM patient *;")
    DB.exec("DELETE FROM doctor *;")
    DB.exec("DELETE FROM specialty*;")
  end
end
