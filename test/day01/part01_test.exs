defmodule Day01Part01Test do
  use ExUnit.Case
  test "1122 should return 3" do
    assert Day01Part01.solve("1122") == 3
  end
  test "1111 should return 4" do
    assert Day01Part01.solve("1111") == 4
  end
  test "1234 should return 0" do
    assert Day01Part01.solve("1234") == 0
  end
  test "91212129 should return 9" do
    assert Day01Part01.solve("91212129") == 9
  end
end
