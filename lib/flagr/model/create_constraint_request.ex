# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Flagr.Model.CreateConstraintRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"property",
    :"operator",
    :"value"
  ]

  @type t :: %__MODULE__{
    :"property" => String.t,
    :"operator" => String.t,
    :"value" => String.t
  }
end

defimpl Poison.Decoder, for: Flagr.Model.CreateConstraintRequest do
  def decode(value, _options) do
    value
  end
end

