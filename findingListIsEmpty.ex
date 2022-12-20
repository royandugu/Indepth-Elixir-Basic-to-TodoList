defmodule FindingEmptyList do
  @moduledoc "This module checks whether the provided list is empty or not"
  def detect_if_empty?([_]), do: true
  def detech_if_empty?([ _ | _ ]), do: false
end
