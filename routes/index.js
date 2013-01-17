
/*
 * GET home page.
 */

var stations = require('../stations')

exports.index = function(req, res){
  res.render('index', { title: 'Express' });
};

exports.station = function(req,res){
  var abbr = req.params.abbr,
      name = stations.abbrToStation(abbr),
      distance = "~200 yards~";

  if( typeof name === 'undefined' ){
    res.status(404);
    res.send(abbr + ' is an unrecognized station abbreviation.');
    return;
  }

  res.render('station', { 
    title: abbr + ' Station',
    stationName: name,
    stationAbbr: abbr,
    distance: distance
  });
};
