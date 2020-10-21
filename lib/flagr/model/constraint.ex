# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Flagr.Model.Constraint do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"property",
    :"operator",
    :"value"
  ]

  @type t :: %__MODULE__{
    :"id" => integer(),
    :"property" => String.t,
    :"operator" => String.t,
    :"value" => String.t
  }
end

defimpl Poison.Decoder, for: Flagr.Model.Constraint do
  def decode(value, _options) do
    value
  end
end
