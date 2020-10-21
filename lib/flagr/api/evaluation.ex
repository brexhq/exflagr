# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Flagr.Api.Evaluation do
  @moduledoc """
  API calls for all endpoints tagged `Evaluation`.
  """

  alias Flagr.Connection
  import Flagr.RequestBuilder


  @doc """

  ## Parameters

  - connection (Flagr.Connection): Connection to server
  - body (EvalContext): evalution context
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Flagr.Model.EvalResult{}} on success
  {:error, info} on failure
  """
  @spec post_evaluation(Tesla.Env.client, Flagr.Model.EvalContext.t, keyword()) :: {:ok, Flagr.Model.EvalResult.t} | {:error, Tesla.Env.t}
  def post_evaluation(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/evaluation")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Flagr.Model.EvalResult{})
  end

  @doc """

  ## Parameters

  - connection (Flagr.Connection): Connection to server
  - body (EvaluationBatchRequest): evalution batch request
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Flagr.Model.EvaluationBatchResponse{}} on success
  {:error, info} on failure
  """
  @spec post_evaluation_batch(Tesla.Env.client, Flagr.Model.EvaluationBatchRequest.t, keyword()) :: {:ok, Flagr.Model.EvaluationBatchResponse.t} | {:error, Tesla.Env.t}
  def post_evaluation_batch(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/evaluation/batch")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Flagr.Model.EvaluationBatchResponse{})
  end
end