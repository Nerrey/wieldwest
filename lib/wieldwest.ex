defmodule Wieldwest do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      worker(Wieldwest.Reciever, [])
    ]

    opts = [strategy: :one_for_one, name: Wieldwest.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
