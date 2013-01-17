stations = require('./stations')

exports.index = (req, res)->
  res.render('index', { title: 'Express' })

exports.station = (req,res)->
  abbr = req.params.abbr
  name = stations.abbrToStation(abbr)
  distance = "~200 yards~"

  unless name?
    res.status(404)
    res.send("#{abbr} is an unrecognized station abbreviation.")
    return

  res.render 'station',
    title: "#{name} station"
    stationName: name
    stationAbbr: abbr
    distance: distance
