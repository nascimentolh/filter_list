defmodule ListFilter do
  def call(list) do
    Enum.flat_map(list, fn str ->
      case Integer.parse(str) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
    |> Enum.filter(fn x -> rem(x, 2) == 0 end)
    |> Enum.count()
  end
end
