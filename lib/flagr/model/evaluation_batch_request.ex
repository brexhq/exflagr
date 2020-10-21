# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Flagr.Model.EvaluationBatchRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"entities",
    :"enableDebug",
    :"flagIDs",
    :"flagKeys",
    :"flagTags",
    :"flagTagsOperator"
  ]

  @type t :: %__MODULE__{
    :"entities" => [EvaluationEntity],
    :"enableDebug" => boolean(),
    :"flagIDs" => [integer()],
    :"flagKeys" => [String.t],
    :"flagTags" => [String.t],
    :"flagTagsOperator" => String.t
  }
end

defimpl Poison.Decoder, for: Flagr.Model.EvaluationBatchRequest do
  import Flagr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"entities", :list, Flagr.Model.EvaluationEntity, options)
  end
end

