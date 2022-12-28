defmodule Mapkeys do
  def sum_of_key(map, key) do
    fun = fn x, acc ->
      if Map.has_key?(x, key) do acc+1
      else acc end
    end

    res = case map do
      %{}  ->  sum_of_key(:nun)
      _ -> Enum.reduce(map, 0, fun)
    end

    res
  end

  defp sum_of_key(:nun) do
    0
  end
end
