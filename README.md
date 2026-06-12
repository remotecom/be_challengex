# BEChallengex

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

1. list_names/0

```elixir
BEChallengex.list_names()
```

2. send_email/1

Pass the recipient's email address via the `to` key:

```elixir
BEChallengex.send_email(%{to: "ahsoka@remote.com"})
```
