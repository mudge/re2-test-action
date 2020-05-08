# re2 Test Action

This action will install a specified version of Ruby using either the
[Brightbox Ruby packages for
Ubuntu](https://www.brightbox.com/docs/ruby/ubuntu/) or a [binary release of
Rubinius](https://book.rubinius.com/manuscript/getting_rubinius.html) and a
version of [Google's re2 library](https://github.com/google/re2) specified by
URL to a valid `.deb` before running the [re2](https://github.com/mudge/re2)
test suite.

## Inputs

### `ruby-version`

**Required** The version of Ruby to install. Default `ruby2.6`.

### `libre2-dev-url`

**Required** The URL of a version of libre2-dev to install. Default
`https://github.com/mudge/re2/releases/download/v1.2.0/libre2-dev_20200501_amd64.deb`.

## Example usage

```
uses: mudge/re2-test-action@v1
with:
  ruby-version: ruby2.5
  libre2-dev-url: https://github.com/mudge/re2/releases/download/v1.2.0/libre2-dev_20160901-1_amd64.deb
```

## License

Copyright © 2020 Paul Mucur

Distributed under the MIT License.
