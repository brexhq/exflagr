# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Flagr.Model.EvaluationEntity do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"entityID",
    :"entityType",
    :"entityContext"
  ]

  @type t :: %__MODULE__{
    :"entityID" => String.t,
    :"entityType" => String.t,
    :"entityContext" => Object
  }
end

defimpl Poison.Decoder, for: Flagr.Model.EvaluationEntity do
  import Flagr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"entityContext", :struct, Flagr.Model.Object, options)
  end
end

