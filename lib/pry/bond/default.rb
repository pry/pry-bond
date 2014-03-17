require "pry-bond"
Pry.config.completer = Proc.new { Pry::BondCompleter.start }
