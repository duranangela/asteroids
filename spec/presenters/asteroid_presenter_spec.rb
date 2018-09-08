require 'rails_helper'

describe AsteroidPresenter do
  subject { AsteroidPresenter.new('January 1, 2018', 'January 7, 2018')}

  it 'exists' do
    expect(subject).to be_a AsteroidPresenter
  end

  context 'instance methods' do
    context '#start_date and #end_date' do
      it 'returns the dates in human readable format' do
        expect(subject.start_date).to eq('January 1, 2018')
        expect(subject.end_date).to eq('January 7, 2018')
      end
    end
    context '#start and #stop' do
      it 'returns the dates in api readable format' do
        expect(subject.start).to eq('2018-01-01')
        expect(subject.stop).to eq('2018-01-07')
      end
    end
    context '#most_dangerous_day' do
      it 'returns the most dangerous day object' do
        expect(subject.most_dangerous_day).to be_a Day
      end
    end
    context '#most_dangerous_date' do
      it 'returns the date of the most_dangerous_day' do
        expect(subject.most_dangerous_date).to eq('January  1, 2018')
      end
    end
    context '#number_dangerous' do
      it 'returns the number of dangerous asteroids for the most dangerous day' do
        expect(subject.number_dangerous).to eq(3)
      end
    end
  end

end
