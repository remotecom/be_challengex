# RemoteChallengeMailer

Mailer client to be used in Remote's elixir code challenge

## Installation

Add it to your mix.exs file

```elixir
def deps do
  [
    {:remote_challenge_mailer, github: "remotecom/challenge_mailer", tag: "0.0.1"}
  ]
end
```

## Usage

```elixir
RemoteChallengeMailer.send_email(%{name: "antonio"}) 
```
