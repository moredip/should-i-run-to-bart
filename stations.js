var STATIONS = {
  "12th": "12th St. Oakland City Center",
  "16th": "16th St. Mission",
  "19th": "19th St. Oakland",
  "24th": "24th St. Mission",
  "ashb": "Ashby",
  "balb": "Balboa Park",
  "bayf": "Bay Fair",
  "cast": "Castro Valley",
  "civc": "Civic Center",
  "cols": "Coliseum/Oakland Airport",
  "colm": "Colma",
  "conc": "Concord",
  "daly": "Daly City",
  "dbrk": "Downtown Berkeley",
  "dubl": "Dublin/Pleasanton",
  "deln": "El Cerrito del Norte",
  "plza": "El Cerrito Plaza",
  "embr": "Embarcadero",
  "frmt": "Fremont",
  "ftvl": "Fruitvale",
  "glen": "Glen Park",
  "hayw": "Hayward",
  "lafy": "Lafayette",
  "lake": "Lake Merritt",
  "mcar": "MacArthur",
  "mlbr": "Millbrae",
  "mont": "Montgomery St.",
  "nbrk": "North Berkeley",
  "ncon": "North Concord/Martinez",
  "orin": "Orinda",
  "pitt": "Pittsburg/Bay Point",
  "phil": "Pleasant Hill",
  "powl": "Powell St.",
  "rich": "Richmond",
  "rock": "Rockridge",
  "sbrn": "San Bruno",
  "sfia": "SFO Airport",
  "sanl": "San Leandro",
  "shay": "South Hayward",
  "ssan": "South San Francisco",
  "ucty": "Union City",
  "wcrk": "Walnut Creek",
  "woak": "West Oakland"
}

exports.abbrToStation = function(abbr){
  return STATIONS[abbr];
}
