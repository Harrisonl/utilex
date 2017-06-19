# Util

Utilities that are useful across a range of elixir applications.

For example, do a quick benchmark to test the speed of a function:

```elixir
$ iex

iex 1>func = fn -> 1 + 1 end
iex 2>Util.time(func, 10_000) # Execute `func` 10_000 times
1.32 # => Average time taken in Microseconds
```

## Installation

Installation is pretty simple:

```elixir
def deps do
  [{:util, "~> 0.1.0", only: :dev}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/util](https://hexdocs.pm/util).

