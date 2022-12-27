defmodule Mapkeys do
  def sum_of_key(map, key) do
    a = Map.get(map, key)

    # case map do
    #   %{} -> sum_of_key(:non)
    #   _   -> sum_of_key(:non)

    a

    # end
  end

  def sum_of_key(:non) do
    0
  end
end
