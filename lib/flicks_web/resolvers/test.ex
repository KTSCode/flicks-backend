defmodule FlicksWeb.Resolvers.Test do
  def test(_parent, args, _resolution) do
    {:ok, %{id: Ecto.UUID.generate(), text: args.text}}
  end
end
