defmodule Elixirresearch.NumbersTest do
  use ExUnit.Case
  
  alias Elixirresearch.Numbers
  
  describe "sum_from_File/1" do
    test "If there's a file with the given name, return the numbers' sum" do
      response = Numbers.sum_from_file("numbers")
      expected_response = {:ok, %{result: 37}}
      
      assert response == expected_response
    end
    
    test "If there's no file with the given name, returns an error" do
      response = Numbers.sum_from_file("test")
      expected_response = {:error, %{message: "Invalid file!"}}
      
      assert response == expected_response
    end
  end
end