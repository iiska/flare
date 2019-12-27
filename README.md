# Flare

Elixir client for [CloudFlare v4 API]()

## Installation

Package can be installed by adding `flare` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:flare, "~> 0.1.2"}
  ]
end
```


## Implemented endpoints

* [ ] Zone
  * [x] List Zone
  * [x] Zone Details
  * [ ] Create Zone
  * [ ] Edit Zone
  * [ ] Delete Zone
  ...

* [ ] DNS Reccords for a Zone
  * [x] List
  * [x] Details
  * [x] Create
  * [x] Delete
  * [ ] Update
  * [ ] Patch
  * [ ] Import
  ...

* [ ] Workers KV Namespace
  * [x] List Names
  * [x] Zone Details
  * [ ] Create Zone
  * [ ] Edit Zone
  * [ ] Delete Zone

* [ ] Stream Videos
* [ ] Worker Script
* [ ] Origin CA
...

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/flare](https://hexdocs.pm/flare).


[CloudFlare v4 API]: https://api.cloudflare.com
