# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Flagr.Model.EvalResult do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"flagID",
    :"flagKey",
    :"flagSnapshotID",
    :"segmentID",
    :"variantID",
    :"variantKey",
    :"variantAttachment",
    :"evalContext",
    :"timestamp",
    :"evalDebugLog"
  ]

  @type t :: %__MODULE__{
    :"flagID" => integer(),
    :"flagKey" => String.t,
    :"flagSnapshotID" => integer(),
    :"segmentID" => integer(),
    :"variantID" => integer(),
    :"variantKey" => String.t,
    :"variantAttachment" => Object,
    :"evalContext" => EvalContext,
    :"timestamp" => String.t,
    :"evalDebugLog" => EvalDebugLog
  }
end

defimpl Poison.Decoder, for: Flagr.Model.EvalResult do
  import Flagr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"variantAttachment", :struct, Flagr.Model.Object, options)
    |> deserialize(:"evalContext", :struct, Flagr.Model.EvalContext, options)
    |> deserialize(:"evalDebugLog", :struct, Flagr.Model.EvalDebugLog, options)
  end
end

