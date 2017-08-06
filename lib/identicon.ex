  ### First three colors of hashed string are RGB color values.
  # then icon is drawn
  #  1 2 3 2 1
  #  4 5 6 5 4
  #  7 8 9 8 7
  # et cetera
  # even is colored, odd is white

  # Struct is a map that can be used to store data, and can have a default value
defmodule Identicon do
  def main(input) do
    input
    |> hash_input
    |> pick_color
  end

  ## Hash a string from the `main` function 
  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
  end

  def pick_color(image) do
    %Identicon.Image{hex: hex_list} = image
    [r, g, b | _tail] = hex_list
    [r, g, b]
  end
end
