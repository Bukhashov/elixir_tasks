defmodule Mapanaliz do
  def all_path_list(maps, list) do
    # res = case map do
    #   %{} -> all_path_list(:nun)
    #   _   ->
    # end

    # fun = fn {k, v} ->
    #   # key = Map.keys(map)
    #   # val = Map.get(map, key)
    #   if is_map(v) do
    #     fun(v)
    #   else
    #     IO.puts(k)
    #     IO.puts(v)
    #   end
    # end

    # %{a1: 1, a2: %{b1: 1}}
    Enum.map_reduce(maps, fn {k, v}, 0, _acc -> get_key({k, v}, []) end)
  end

  defp get_key({k, v}, list) do
    # key = Map.keys(map)
    # val = Map.get(map, Enum.at(key, 0))

    # list = List.insert_at(list, -1, key)
    # if is_map(val) do
    #   IO.puts("yes")
    # else
    #   IO.puts("no")
    # end

  end

  defp all_path_list(:nun) do
    0
  end

end
