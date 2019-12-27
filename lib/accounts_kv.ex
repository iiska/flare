defmodule Flare.Accounts.KV do
  def namespaces(account, params \\ []),
    do: Flare.get("accounts/#{account}/storage/kv/namespaces")

  def create_namespace(account, title) do
    Flare.post("accounts/#{account}/storage/kv/namespaces", %{title: title})
  end

  def delete_namespace(account, namespace) do
    Flare.delete("accounts/#{account}/storage/kv/namespaces/#{namespace}")
  end

  def keys(account, namespace, params \\ []) do
    Flare.get("accounts/#{account}/storage/kv/namespaces/#{namespace}/keys")
  end

  def read(account, namespace, key) do
    Flare.get("accounts/#{account}/storage/kv/namespaces/#{namespace}/values/#{key}")
  end

  def write(account, namespace, key, value) do
    Flare.put("accounts/#{account}/storage/kv/namespaces/#{namespace}/values/#{key}", value)
  end

  def write(account, namespace, keys) do
    Flare.put("accounts/#{account}/storage/kv/namespaces/#{namespace}/bulk", keys)
  end

  def delete(account, namespace, key) when is_binary(key) do
    Flare.delete("accounts/#{account}/storage/kv/namespaces/#{namespace}/values/#{key}")
  end

  def delete(account, namespace, keys) do
    Flare.delete("accounts/#{account}/storage/kv/namespaces/#{namespace}/bulk", keys)
  end
end
