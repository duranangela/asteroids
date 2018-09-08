require 'rails_helper'

describe Day do
  day = Day.new(['2018-01-01', [{
    name: 'bob',
    neo_reference_id: '123',
    is_potentially_hazardous_asteroid: true
  },
    {
    name: 'fred',
    neo_reference_id: '456',
    is_potentially_hazardous_asteroid: false
      }]])

  subject { day }

  it 'exists' do
    expect(subject).to be_a Day
  end

  context 'instance methods' do
    context '#date' do
      it 'returns the date of the day' do
        expect(subject.date).to eq('2018-01-01')
      end
    end
    context '#dangerous_ones' do
      it 'returns an array of all dangerous asteroids on that day' do
        expect(subject.dangerous_ones).to be_a Array
        expect(subject.dangerous_ones.first).to have_attributes(name: 'bob', neo_ref_id: '123', dangerous: true)
      end
    end
  end
end
