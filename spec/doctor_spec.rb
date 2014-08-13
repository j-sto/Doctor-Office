require 'spec_helper'

describe Doctor do

  it 'is initialized with a name and specialty id' do
    test_doctor = Doctor.new({:name =>'Brown', :specialty_id => 2})
    expect(test_doctor).to be_an_instance_of Doctor
  end

  it 'returns the name' do
    test_doctor = Doctor.new({:name => 'Brown', :specialty_id => 2})
    expect(test_doctor.name).to eq 'Brown'
  end

  it 'starts with an empty array of Doctors' do
    expect(Doctor.all).to eq []
  end

  it 'saves a doctor to the database' do
    test_doctor = Doctor.new(:name => 'Brown', :specialty_id => 2)
    test_doctor.save
    expect(Doctor.all).to eq [test_doctor]
  end

  it 'is the same doctor if it has the same name and specialty id' do
    test_doctor1 = Doctor.new(:name => 'Brown', :specialty_id => 2)
    test_doctor2 = Doctor.new(:name => 'Brown', :specialty_id => 2)
    expect(test_doctor1).to eq test_doctor2
  end




end
