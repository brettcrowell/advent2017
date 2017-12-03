defmodule Day01Part01 do

  def solve(captcha) do
    solve(captcha, 0, true)
  end

  def solve(captcha, total, is_first, memo \\ nil) do

    first = String.slice(captcha, 0, 1)
    rest = String.slice(captcha, 1, String.length(captcha) - 1)

    last_iteration = rest == ""
    memoized_value = if (is_first), do: first, else: memo

    solve(first, rest, total, last_iteration, memoized_value)

  end

  def solve(first, rest, total, last_iteration, memo) do

    next_first = if (last_iteration), do: memo, else: String.slice(rest, 0, 1)

    updated_total =
      case first == next_first do
        true -> total + String.to_integer(first)
        false -> total
      end

    if last_iteration do
      updated_total
    else
      solve(rest, updated_total, false, memo)
    end

  end

end

code = File.read!("./lib/day01/input")

code
|> Day01Part01.solve
|> IO.puts