defmodule Jobber do
  @moduledoc """
  Documentation for `Jobber`.
  """

  alias Jobber.{JobRunner, Job}

  def start_job(args) do
    DynamicSupervisor.start_child(JobRunner, {Job, args})
  end
end
