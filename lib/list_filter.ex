defmodule ListFilter do
  def call(list) do
    Enum.flat_map(list, fn str ->
      case Integer.parse(str) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
    |> Enum.filter(&rem(&1, 2) != 0)
    |> Enum.count()
  end
end
