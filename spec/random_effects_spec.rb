require 'random_results'

describe RandomResults do

  let(:random_results) { described_class.new(['WAS PUNISHED',
    'WAS TWATTED',
    'IS REELING',
    "CAN'T TAKE IT",
  'GOT HAMMERED',
'TOOK A BEATING'],
['GOT KICKED TO THE KERB',
  'IS TRASHED',
  'WAS WASTED',
  'IS LITERALLY A BUNCH OF RUBBISH',
'IS UNWANTED AND BROKEN CRAP',
'IS A BAD IDIOT']) }

  it 'generates a range of damage results' do
    results_ary = []
    100.times { results_ary << random_results.damage_result }
    expect(results_ary.uniq.count).to eq (random_results.damage_results_ary.count)
  end

  it 'generates a range of winning insults' do
    results_ary = []
    100.times { results_ary << random_results.winsult }
    expect(results_ary.uniq.count).to eq (random_results.winsults_ary.count)
  end
end
