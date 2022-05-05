defmodule DummyioTest do
  use ExUnit.Case
  doctest Dummyio

  test "greets the world" do
    assert Dummyio.hello() == :world
  end
end
