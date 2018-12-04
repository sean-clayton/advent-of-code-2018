defmodule Day1 do
  def get_final_frequency(frequency_list) when is_list(frequency_list) do
    frequency_list
    |> Enum.map(fn string ->
      {number, _} = Integer.parse(string)
      number
    end)
    |> Enum.reduce(0, &+/2)
  end

  def get_final_frequency_from_file(file_contents) do
    file_contents
    |> String.split("\n", trim: true)
    |> get_final_frequency()
  end

  def get_first_repeated_frequency(frequency_stream) do
    frequency_stream
    |> Stream.map(fn string ->
      {number, _} = Integer.parse(string)
      number
    end)
    |> Stream.cycle()
    |> Enum.reduce_while({0, MapSet.new([0])}, fn previous_frequency,
                                                  {current_frequency, past_frequencies} ->
      new_frequency = current_frequency + previous_frequency

      case new_frequency in past_frequencies do
        true -> {:halt, new_frequency}
        false -> {:cont, {new_frequency, MapSet.put(past_frequencies, new_frequency)}}
      end
    end)
  end
end
