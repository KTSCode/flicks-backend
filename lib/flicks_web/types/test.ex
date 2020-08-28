defmodule FlicksWeb.Types.Test do
  @moduledoc false
  use Absinthe.Schema.Notation

  object :test do
    field :id, :id
    field :text, :string
  end
end
