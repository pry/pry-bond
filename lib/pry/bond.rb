require_relative "bond/version"
require_relative "bond/completer"
require_relative "bond/enable_command"
require_relative "bond/disable_command"
# Pry::Bond is not the best name for a namespace,
# because all references to Bond from Pry now
# pointing to the "wrong" module
module Pry::BondCompleter
end