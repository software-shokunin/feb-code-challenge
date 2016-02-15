defmodule NoMath do
  use Bitwise

  def add(numbers) when is_list(numbers) do
    Enum.reduce(numbers, 0, fn num, acc ->
      add(num, acc)
    end)
  end

  def add(num1, 0), do: num1
  def add(0, num2), do: num2
  def add(num1, num2) do
    add(num1 ^^^ num2, (num1 &&& num2) <<< 1)
  end
end
