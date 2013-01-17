KEY = process.env.BART_API_KEY || 'MW9S-E7SL-26DU-VV8V'
Bart = require('bart-api')
api = new Bart(KEY)

exports.etdsForStation = (station,cb)->
  api.etd 'etd', orig:station, (err,xml,body)->
    if err?
      cb(err)
      return

    responseErrors = []
    xml.find('/root/message/error').forEach (error)->
      responseErrors.push
        message: error.get('text').text()
        details: error.get('details').text()

    if responseErrors.length > 0
      cb( responseErrors, xml )
      return

    departures = xml.find('/root/station/etd').map (etd)->
      minutes = parseInt( etd.get('estimate/minutes').text() )
      departing = if isNaN(minutes) then 0 else minutes

      destAbbr: etd.get('abbreviation').text()
      departing: departing

    departures.sort (lhs,rhs)-> lhs.departing - rhs.departing

    cb( null, departures )


exports.rawApi = api
