# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Flagr.Model.Segment do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"description",
    :"constraints",
    :"distributions",
    :"rank",
    :"rolloutPercent"
  ]

  @type t :: %__MODULE__{
    :"id" => integer(),
    :"description" => String.t,
    :"constraints" => [Constraint],
    :"distributions" => [Distribution],
    :"rank" => integer(),
    :"rolloutPercent" => integer()
  }
end

defimpl Poison.Decoder, for: Flagr.Model.Segment do
  import Flagr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"constraints", :list, Flagr.Model.Constraint, options)
    |> deserialize(:"distributions", :list, Flagr.Model.Distribution, options)
  end
end
