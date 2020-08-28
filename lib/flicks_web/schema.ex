defmodule FlicksWeb.Schema do
  @moduledoc """
    GraphQL Schema for Flicks
  """
  use Absinthe.Schema
  import_types(FlicksWeb.Types.Test)

  query do
    @desc "Test"
    field :test, :test do
      arg(:text, non_null(:string))
      resolve(&FlicksWeb.Resolvers.Test.test/3)
    end
  end
end
