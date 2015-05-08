Code.require_file "../support/post.exs", __DIR__
Code.require_file "../support/user.exs", __DIR__

defmodule Ecto.ValidationCaseTest do
  use ExUnit.Case
  use Ecto.ValidationCase, model: User

  test ".rejects/2 succeeds when the model validation fails" do
    rejects nil, for: :name
  end

  test ".rejects/2 fails when model validation succeeds" do
    error = get_error_message fn ->
      rejects "hello", for: :name
    end

    assert error == "Expected \"hello\" to be invalid for field :name."
  end

  test ".rejects/2 succeeds when the correct :message option is passed" do
    rejects "test", for: :email, message: "Email is invalid"
  end

  test ".rejects/2 fails when an incorrect :message option is passed" do
    error = get_error_message fn ->
      rejects "test", for: :email, message: "wrong message"
    end

    assert error == "Assertion with == failed"
  end

  test ".rejects/2 fails when the field does not exist on the model" do
    error = get_error_message fn ->
      rejects "value", for: :nonexistent
    end

    assert error == "User does not have a field named :nonexistent."
  end

  test ".accepts/2 succeeds when model validation succeeds" do
    accepts "name", for: :name
  end

  test ".accepts/2 fails when model validation fails" do
    error = get_error_message fn ->
      accepts nil, for: :name
    end

    assert error == "Expected nil to be valid for :name."
  end

  test ".accepts/2 fails when the field does not exist on the model" do
    error = get_error_message fn ->
      accepts "value", for: :nonexistent
    end

    assert error == "User does not have a field named :nonexistent."
  end

  test "both .accepts/2 and .rejects/2 can specify a model to use" do
    accepts "title", for: [Post, :title]
    rejects nil, for: [Post, :title]
  end

  test "both .accepts/2 and .rejects/2 raise an error if model not specified" do
    assert_raise ArgumentError, fn ->
      accepts "title", for: [nil, :title]
    end

    assert_raise ArgumentError, fn ->
      rejects nil, for: [nil, :title]
    end
  end

  defp get_error_message(fun) do
    try do
      fun.()
    rescue
      e -> e.message
    end
  end
end
