# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Flagr.Model.EvaluationBatchResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"evaluationResults"
  ]

  @type t :: %__MODULE__{
    :"evaluationResults" => [EvalResult]
  }
end

defimpl Poison.Decoder, for: Flagr.Model.EvaluationBatchResponse do
  import Flagr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"evaluationResults", :list, Flagr.Model.EvalResult, options)
  end
end

