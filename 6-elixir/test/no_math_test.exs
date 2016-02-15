defmodule NoMathTest do
  use ExUnit.Case
  doctest NoMath

  test "Adds two positive integers" do
    assert NoMath.add(1,1) === 2
  end

  test "Adds two negative integers" do
    assert NoMath.add(-1, -1) == -2
  end

  test "Adds zero" do
    assert NoMath.add(0, 1) == 1
    assert NoMath.add(1, 0) == 1
  end

  test "Adds zeros" do
    assert NoMath.add(0,0) == 0
  end

  test "Adds list of zeros" do
    assert NoMath.add([1,2,3,4,5]) === 15
  end

end
