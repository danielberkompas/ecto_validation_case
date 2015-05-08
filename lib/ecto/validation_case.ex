defmodule Ecto.ValidationCase do
  @shortdoc "Simplify testing Ecto model validations."

  @moduledoc """
  Ecto.ValidationCase simplifies writing validation tests for Ecto models.

  ## Example

      defmodule MyApp.UserTest do
        use ExUnit.Case
        use Ecto.ValidationCase
        alias MyApp.User

        test "requires password to be 10 chars long" do
          rejects "password",    for: [User, :password], message: "too short"
          accepts "password123", for: [User, :password]
        end
      end

  The `accepts/2` and `rejects/2` functions automatically generate a changeset
  using the specified model's `changeset/2` function, and then check the error
  messages to ensure that each field is validated properly.

  ## Define `:model`

  If you want to save typing, you can specify a model when you 
  `use Ecto.ValidationCase`, like this:

      use Ecto.ValidationCase, model: MyApp.User

  You can then leave the model out of the `for:` option, and `MyApp.User` will 
  be used by default. 

      accepts "Daniel Berkompas", for: :name
  
  Of course, if you want to run a validation on a different module, you
  can still do that:

      rejects nil, for: [OtherModel, :name]

  To read more, see the documentation of the other functions in this module:

  - `accepts/2`
  - `rejects/2`
  """

  use ExUnit.CaseTemplate
 
  defmacro __using__(options) do
    use_module options[:model]
  end

  @doc """
  Verify that a value is accepted by a model's validations. 

  ## Options

  + `:for` - specifies which field on the model this is for. It can be specified
    in two forms: `for: [Model, :field]`, or just `for: :field`. In the later
    case, make sure you've specified a model in your `using` clause.

  ## Examples

      accepts "Daniel Berkompas", for: [User, :name]

      # Leave out `User` if you specified it as the `:model` in the `using`
      # clause:

      accepts "Daniel Berkompas", for: :name
  """
  def accepts(value, for: [model, field]) do
    changes = changeset(model, field, value)
    assert_field_present(changes, field)
    refute changes.errors[field], "Expected #{inspect value} to be valid for #{inspect field}."
  end
 
  @doc """
  Verify that a value is rejected by a model's validations.

  ## Options

  + `:for` - specifies which field on the model this is for. It can be specified
    in two forms: `for: [Model, :field]`, or just `for: :field`. In the later
    case, make sure you've specified a model in your `using` clause.

  + `:message` - The specific error message that should be returned by the
    validations.

  ## Examples

      # Test that a field is required
      rejects nil, for: [User, :name]

      # Leave out `User` if you specified it as the `:model` in the `using`
      # clause:
      rejects nil, for: :name
  """
  def rejects(value, [{:for, [model, field]}|_rest] = opts) do
    changes = changeset(model, field, value)
    error   = changes.errors[field]
 
    assert_field_present(changes, field)
    assert error, "Expected #{inspect value} to be invalid for field #{inspect field}."
 
    if opts[:message] do
      assert error == opts[:message]
    end
  end

  @doc false
  def put_model_if_missing(model, opts) do
    Dict.update! opts, :for, fn
      field when is_atom(field) -> [model, field]
      other -> other
    end
  end
 
  defp assert_field_present(changes, field) do
    assert field in Map.keys(changes.model), "#{inspect changes.model.__struct__} does not have a field named #{inspect field}."
  end

  defp changeset(nil, field, value) do
    raise ArgumentError, """
    You cannot validate the #{inspect field} field without specifying a model to
    validate against. This can be done in two ways.

    Option 1:

        use ValidationCase, model: MyApp.Model

    Option 2: Specify the model in each `accepts` or `rejects`:

        accepts #{inspect value}, for: [MyApp.Model, #{inspect field}]
    """
  end
 
  defp changeset(model, field, value) do
    attrs = Map.put(%{}, field, value)
    model.changeset(model.__struct__, attrs)
  end

  # If the user does not specify a `:model` to use by default, then simply
  # import the `accepts/2` and `rejects/2` functions. We don't need any 
  # wrapper.
  defp use_module(nil) do
    quote do
      import unquote(__MODULE__), only: [accepts: 2, rejects: 2]
    end
  end

  # If the user specifies a default `:model`, we need to wrap the `accepts/2`
  # and `rejects/2` functions with a little sugar to add the model they chose
  # into the `:for` option.
  defp use_module(model) do
    quote do
      alias unquote(__MODULE__), as: Validation
 
      @doc false
      def accepts(value, opts) do 
        opts = Validation.put_model_if_missing(unquote(model), opts)
        Validation.accepts(value, opts)
      end
 
      @doc false
      def rejects(value, opts) do 
        opts = Validation.put_model_if_missing(unquote(model), opts)
        Validation.rejects(value, opts)
      end
    end
  end
end
