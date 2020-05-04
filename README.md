# Ruby libre2-dev action

This action will install a specified version of Ruby using the [Brightbox Ruby packages for Ubuntu](https://www.brightbox.com/docs/ruby/ubuntu/) and a version of [Google's re2 library](https://github.com/google/re2) specified by URL to a valid `.deb`.

## Inputs

### `ruby-version`

**Required** The version of Ruby to install. Default `2.6`.

### `libre2-dev-url`

**Required** The URL of a version of libre2-dev to install. Default `https://github.com/mudge/re2/releases/download/v1.2.0/libre2-dev_20200501_amd64.deb`.

## Example usage

```
uses: mudge/ruby-libre2-dev-action@v1
with:
  ruby-version: 2.5
  libre2-dev-url: https://github.com/mudge/re2/releases/download/v1.2.0/libre2-dev_20160901-1_amd64.deb
```
