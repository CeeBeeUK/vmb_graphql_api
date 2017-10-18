Event.create [
  {name: '5 Ringers Club'}, # , start_date: '2012-08-31', location: '', status: 'archived'},
  {name: 'Love bug'}, # , start_date: '2013-10-13', location: 'Milton Keynes', status: 'archived'},
  {name: 'GI Joes II'}, # , start_date: '2014-12-30', location: 'Stratford upon Avon', status: 'archived'},
  {name: 'The Increadybles'} # , start_date: '2016-02-05', location: 'Dorking', status: 'archived'}
]
Event.all.each do |event|
  (0..6).each do |board_id|
    EvidenceBoard.create(event: event, label: "Board #{(65+board_id).chr}", position: board_id + 1)
  end
end
