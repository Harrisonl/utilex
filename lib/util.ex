defmodule Utilex do

  @doc """
  Records the time taken to execute the passed in function.

  Optionally takes in a `times` argument which will run the function
  that number of times and return the average result.

  ```elixir
  iex> Util.time(fn() -> 1 + 1 end, 100)
  5.32
  ```
  """
  def time(func, times \\ 1) do
    for _ <- 1..times do
      :timer.tc(fn -> func.() end)
      |> elem(0)
    end
    |> Enum.sum
    |> Kernel./(times)
  end
end
