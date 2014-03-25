class Pry::BondCompleter::EnableCommand < Pry::ClassCommand
  match 'enable-bond!'
  group 'bond'
  description 'enable input completion through the `bond` rubygem.'
  banner <<-BANNER
    Usage: enable-bond!
    enables input completion through the `bond` rubygem.
  BANNER

  def process
    _pry_.config.completer = Pry::BondCompleter.start
    output.puts heading("bond input completion has been enabled and is ready to use!")
  end
  Pry.commands.add_command(self)
end
