require "pry/bond/version"
require "pry/bond_completer"
module Pry::Bond
  Pry.config.completer = Proc.new { Pry::BondCompleter.start }
  Pry.commands.command "bond!" do
    _pry_.config.completer = Pry::BondCompleter.start
  end
end
