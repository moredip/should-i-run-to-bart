stations = require('./stations')
bart = require('./bart')

exports.index = (req, res)->
  res.redirect('/stations')

exports.stations = (req,res)->
  stationVMs = for abbr, name of stations.allStations()
    {
      link: "/stations/#{abbr}"
      desc: name
    }

  console.log stationVMs

  res.render 'stations',
    title: "Chose a station"
    stations: stationVMs



exports.station = (req,res)->
  abbr = req.params.abbr
  name = stations.abbrToStation(abbr)
  distance = "~200 yards~"

  unless name?
    res.status(404)
    res.send("#{abbr} is an unrecognized station abbreviation.")
    return


  bart.etdsForStation abbr, (err,etds)->
    if err?
      res.status(500)
      res.send( JSON.stringify(err) )
      return

    etds.forEach (etd)->
      etd.destName = stations.abbrToStation(etd.destAbbr)

    res.render 'station',
      title: "#{name} station"
      stationName: name
      stationAbbr: abbr
      distance: distance
      etds: etds
