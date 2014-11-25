__pry-bond__

pry-bond offers input completion in the [pry](https://github.com/pry/pry) repl through
the [bond](https://github.com/cldwalker/bond) rubygem. the default input completion for
pry has been inherited from IRB but bond offers more extensibility options through gems like
[bond-yard](https://github.com/cldwalker/bond-yard).

__Features__

- provides input completion in pry through the `bond` rubygem.
- provides `enable-bond!` command for switching to bond completion inside a repl session.
- provides `disable-bond!` command for switching back the pry default inside a repl session.
- provides a file for require to change pry default(`Pry::InputCompleter`) to `Pry::BondCompleter`.

__Examples__

make the default

```ruby
require "pry/bond/default"
```

in a repl session

```
[1] pry(main)> enable-bond!
bond input completion has been enabled and is ready to use!
--

[2] pry(main)> disable-bond!
bond input completion has been disabled and the pry default has been restored.
--
```

__Dependencies__

pry-bond depends on:

- pry `~> 0.10` <br>
  the repl!

- bond `~> 0.5` <br>
  provides input completion

- rb-readline `~> 0.5` <br>
  provides pure ruby implementation of readline that removes platform compatibility issues with C
  version and editline(OSX).

__Contribute__

1. [fork it](https://github.com/pry/pry-bond/fork)
2. clone forked repository (`git clone https://github.com/your-name/pry-bond.git`)
3. create feature branch (`git checkout -b new-feature`)
4. commit your changes (`git commit -am 'Add new feature'`)
5. push to the branch (`git push origin new-feature`)
6. create new Pull Request

__Tips__

install runtime and development dependencies with bundler.

```
$ git clone https://github.com/pry/pry-bond.git
$ cd pry-bond
$ bundle install
```

run the tests.

```
$ [bundle exec] rake test
```

__Install__

```
gem install pry-bond
```

__License__

MIT. See LICENSE.txt.
