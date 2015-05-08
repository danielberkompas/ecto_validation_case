defmodule Post do
  use Ecto.Model

  schema "posts" do
    field :title, :string
    field :body, :string
  end

  @required_fields ~w(title body)
  @optional_fields ~w()

  def changeset(model, params) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
