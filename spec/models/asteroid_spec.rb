require 'rails_helper'

describe Asteroid do
  let(:info) {
    {
      name: 'bob',
      neo_reference_id: '123',
      is_potentially_hazardous_asteroid: true
    }
  }

  subject { Asteroid.new(info)}

  it 'exists' do
    expect(subject).to be_an Asteroid
  end
  context 'instance methods' do
    context 'attr_readers' do
      it 'returns attributes' do
        expect(subject.name).to eq('bob')
        expect(subject.neo_ref_id).to eq('123')
        expect(subject.dangerous).to eq(true)
      end
    end

  end
end
