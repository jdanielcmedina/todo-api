lists = require "#{__dirname}/../lists"

module.exports = (req, res) ->
  if lists.update req.params.listID, req.body.name
    res.json 'ok'
  else
    res.json 'list not found', 404
