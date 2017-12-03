defmodule Day01Part02 do

  def solve(captcha) do
    solve(captcha, 0, 0, captcha)
  end

  def solve(captcha, total, pos, original) do

    first = String.slice(captcha, 0, 1)
    rest = String.slice(captcha, 1, String.length(captcha) - 1)

    solve(first, rest, total, pos, original)

  end

  def solve(first, rest, total, pos, original) do

    next_pos = pos + 1
    augmented_rest = rest <> original
    half_pos = round(String.length(original) / 2) - 1

    match_char = String.slice(augmented_rest, half_pos, 1)

    updated_total =
      case first == match_char do
        true -> total + String.to_integer(first)
        false -> total
      end

    if next_pos < String.length(original) do
      solve(rest, updated_total, next_pos, original)
    else
      updated_total
    end

  end

end

code = File.read!("./lib/day01/input")

code
|> Day01Part02.solve
|> IO.puts