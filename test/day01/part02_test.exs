defmodule Day01Part02Test do
  use ExUnit.Case
  test "1212 should return 6" do
    assert Day01Part02.solve("1212") == 6
  end
  test "1221 should return 0" do
    assert Day01Part02.solve("1221") == 0
  end
  test "123425 should return 4" do
    assert Day01Part02.solve("123425") == 4
  end
  test "123123 should return 12" do
    assert Day01Part02.solve("123123") == 12
  end
  test "12131415 should return 4" do
    assert Day01Part02.solve("12131415") == 4
  end
end
