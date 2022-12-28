defmodule MapanalizTest do
  use ExUnit.Case
  doctest Mapanaliz

  test "all_path_list(prev_result, xmap, prev_path)" do
    assert Mapanaliz.all_path_list(%{}, []) == []
    assert Mapanaliz.all_path_list(%{a1: 1}, []) == [[:a1]]
    assert Mapanaliz.all_path_list(%{a1: 1, a2: 1}, []) == [[:a1], [:a2]]
    assert Mapanaliz.all_path_list(%{a1: %{b1: 1}}, []) == [[:a1], [:a1, :b1]]
    assert Mapanaliz.all_path_list(%{a1: 1, a2: %{b1: 1}}) == [[:a1], [:a2], [:a2, :b1]]

    assert Mapanaliz.all_path_list(%{a1: 1, a2: %{a2b1: 1, a2b2: 1}}) == [[:a1], [:a2], [:a2, :a2b1], [:a2, :a2b2]]

    assert Mapanaliz.all_path_list(%{a: %{c: 1, d: 1}, b: %{e: 1}}) == [[:a], [:b], [:a, :c], [:a, :d], [:b, :e]]

    assert Mapanaliz.all_path_list(%{z1: %{y11: 1, y12: 1}, z2: %{y21: %{x221: 1}}}) == [[:z1], [:z2], [:z1, :y11], [:z1, :y12], [:z2, :y21], [:z2, :y21, :x221]]
  end
end
