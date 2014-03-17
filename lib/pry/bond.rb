require "pry/bond/version"
require "pry/bond_completer"
module Pry::Bond
  Pry.commands.command "bond!" do
    _pry_.config.completer = Pry::BondCompleter.start
  end
end
