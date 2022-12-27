defmodule MapkeysTest do
  use ExUnit.Case
  doctest Mapkeys

  test "checking for correctness" do
    assert( sum_of_key([%{a: 1}, %{b: 3}, %{a: 1, b: 1}], :a) == 2)
  end

  test "checking for errors" do
    assert( sum_of_key([%{a: 1}, %{b: 3}, %{a: 1, b: 1}], :b) == 4)
  end
end
