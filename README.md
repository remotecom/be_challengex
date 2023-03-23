# BE Challenge

Library necessary when doing Remote's elixir code challenge

## Installation

Add it to your mix.exs file

```elixir
def deps do
  [
    {:be_challengex, github: "remotecom/be_challengex", tag: "0.0.1"}
  ]
end
```

## Usage

1. send_email/1

```elixir
BEChallengex.send_email(%{name: "Ahsoka Tano"}) 
```
