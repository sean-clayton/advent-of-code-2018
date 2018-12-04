defmodule AdventOfCodeTest do
  use ExUnit.Case

  describe "day 1" do
    test "part 1" do
      assert Day1.get_final_frequency([
               "+1",
               "+1",
               "+1"
             ]) == 3

      assert Day1.get_final_frequency([
               "+1",
               "+1",
               "-2"
             ]) == 0

      assert Day1.get_final_frequency([
               "-1",
               "-2",
               "-3"
             ])
    end

    test "part 2" do
      assert Day1.get_first_repeated_frequency([
               "+1",
               "-1"
             ]) == 0

      assert Day1.get_first_repeated_frequency([
               "+3",
               "+3",
               "+4",
               "-2",
               "-4"
             ]) == 10

      assert Day1.get_first_repeated_frequency([
               "-6",
               "+3",
               "+8",
               "+5",
               "-6"
             ]) == 5

      assert Day1.get_first_repeated_frequency([
               "+7",
               "+7",
               "-2",
               "-7",
               "-4"
             ]) == 14
    end
  end
end
