# Description:
#   Load script recursively
# Dependences:
#   "glob": "~3.1.20"

Path = require "path"
Glob = require "glob"
module.exports = (robot) ->
  robot.logger.info "read sub dir"
  dirs = Glob.sync(__dirname+"/**/*/")
  for dir in dirs
    robot.load dir