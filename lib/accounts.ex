defmodule Flare.Accounts do
  def list(params \\ []), do: Flare.get("accounts", params)

  def details(account, params \\ []), do: Flare.get("accounts/#{account}", params)
end
