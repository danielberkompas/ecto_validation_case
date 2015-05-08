defmodule User do
  use Ecto.Model

  schema "models" do
    field :name, :string
    field :email, :string
  end

  @required_fields ~w(name email)
  @optional_fields ~w()

  def changeset(model, params) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_format(:email, ~r/@/, message: "Email is invalid")
  end
end
