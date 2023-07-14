defmodule SupplyChainUi.Card do
  use Phoenix.Component
  #  alias Phoenix.LiveView.JS
  import SupplyChainUi.Gettext

  def dashboard(assigns) do
    assigns =
      assign_new(assigns, :description, fn -> nil end)
      |> assign_new(:title, fn -> nil end)

    ~H"""
    <div class="overflow-hidden rounded-lg bg-white px-4 py-5 shadow sm:p-6">
        <dt class="truncate text-sm font-medium text-gray-500"><%= @title %></dt>
        <dd class="mt-1 text-3xl font-semibold tracking-tight text-gray-900"><%= @description %></dd>
    </div>
    """
  end

  def extract_validation(assigns) do
    assigns =
      assign_new(assigns, :valid_record, fn -> 0 end)
      |> assign_new(:valid_record_callback, fn -> "view_valid_records" end)
      |> assign_new(:invalid_record, fn -> 0 end)
      |> assign_new(:total_record, fn -> 0 end)
      |> assign_new(:invalid_record_callback, fn -> "view_invalid_records" end)

    ~H"""
    <dl class="mt-5 grid grid-cols-1 gap-4 sm:grid-cols-3">
        <button type="button" phx-click={@valid_record_callback}
                class="zoom-in overflow-hidden rounded-lg bg-white px-4 py-5 shadow sm:p-6">
            <dt class="truncate text-sm font-medium text-gray-500">Valid record</dt>
            <dd class="mt-1 text-3xl font-semibold tracking-tight text-gray-900"><%= @valid_record %></dd>
        </button>
        <button type="button" phx-click={@invalid_record_callback} class="zoom-in overflow-hidden rounded-lg bg-white px-4 py-5 shadow sm:p-6">
            <dt class="truncate text-sm font-medium text-gray-500">Invalid record</dt>
            <dd class="mt-1 text-3xl font-semibold tracking-tight text-gray-900"><%= @invalid_record %></dd>
        </button>
        <button type="button" class="overflow-hidden rounded-lg bg-white px-4 py-5 shadow sm:p-6">
            <dt class="truncate text-sm font-medium text-gray-500">Total record</dt>
            <dd class="mt-1 text-3xl font-semibold tracking-tight text-gray-900"><%= @total_record %></dd>
        </button>
    </dl>
    """
  end
end
