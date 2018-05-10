# Facebook Graph API
[![Docs](https://img.shields.io/badge/docs-available-brightgreen.svg)](https://alexdovzhanyn.github.io/facebook/)
[![Build Status](https://travis-ci.org/alexdovzhanyn/facebook.svg?branch=master)](https://travis-ci.org/alexdovzhanyn/facebook)

A library for accessing the Facebook Graph API

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  facebook:
    github: alexdovzhanyn/facebook
```

## Usage

```crystal
require "facebook"
```

### Get node by ID

```crystal
require "facebook"

facebook = Facebook::Api.new(ACCESS_TOKEN)
facebook.get_node(820882001277849) #=> {"name":"Coca-Cola","id":"820882001277849"}
```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it ( https://github.com/[your-github-name]/facebook/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[Alex Dovzhanyn]](https://github.com/[alexdovzhanyn])  - creator, maintainer
