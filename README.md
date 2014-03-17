| Project         | pry-bond
|:----------------|:--------------------------------------------------
| homepage        | https://github.com/pry/pry-bond
| build           | [![Build Status](https://travis-ci.org/pry/pry-bond.png)](https://travis-ci.org/pry/pry-bond)

__DESCRIPTION__

pry-bond offers input completion in the [pry](https://github.com/pry/pry) repl through
the [bond](https://github.com/cldwalker/bond) rubygem. the default input completion for
pry has been inherited from IRB but bond offers more extensibility options through gems like
[bond-yard](https://github.com/cldwalker/bond-yard).

__FEATURES__

- provides input completion in pry through the `bond` rubygem.
- provides `enable-bond!` command for switching to bond completion inside a repl session.
- provides `disable-bond!` command for switching back the pry default inside a repl session.
- provides a file for require to change pry default(`Pry::InputCompleter`) to `Pry::BondCompleter`.

__EXAMPLES__

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


__RUBIES__

i always try to support every ruby implementation unless it is very hard to do
or sometimes impossible. the [.travis.yml](https://github.com/pry/pry-bond/blob/master/.travis.yml)
file keeps a list of files the tests of this project are run against.

__CONTRIBUTE!__

[fork it](https://github.com/pry/pry-bond/fork), clone, change.

__tips__

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

__INSTALL__

```
gem install pry-bond
```

__LEGAL__

see LEGAL.txt
