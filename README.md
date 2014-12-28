# CloudSnapshooter

Create cloud snapshot.

[![Gem Version](https://badge.fury.io/rb/cloud_snapshooter.svg)](http://badge.fury.io/rb/cloud_snapshooter)
[![Code Climate](https://codeclimate.com/github/Lorentzca/cloud_snapshooter/badges/gpa.svg)](https://codeclimate.com/github/Lorentzca/cloud_snapshooter)
[![Dependency Status](https://gemnasium.com/Lorentzca/cloud_snapshooter.svg)](https://gemnasium.com/Lorentzca/cloud_snapshooter)
[![wercker status](https://app.wercker.com/status/e6cde04dd13908b723df8b5145627369/s "wercker status")](https://app.wercker.com/project/bykey/e6cde04dd13908b723df8b5145627369)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cloud_snapshooter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cloud_snapshooter

## Usage

### Amazon EC2

Export environment variable

```bash
$ export AWS_ACCESS_KEY_ID=XXXXXXXX
$ export AWS_SECRET_ACCESS_KEY=YYYYYYYY
$ export AWS_REGION=ZZZZZZZZ
```

Create ec2 volume snapshot

```ruby
require 'cloud_snapshooter'

CloudSnapshooter::Shoot.ec2_snapshot('vol-xxxxxxxx','description')
#=> <AWS::EC2::Snapshot id:snap-yyyyyyyy>
```

Executable commands

```bash
$ cloudsnapshooter ec2 vol-xxxxxxxx description
```

Or

```bash
$ bundle exec ruby cloudsnapshooter ec2 vol-xxxxxxxx description
```

## Contributing

1. Fork it ( https://github.com/Lorentzca/cloud_snapshooter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
