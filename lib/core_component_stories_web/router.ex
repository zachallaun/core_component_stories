defmodule CoreComponentStoriesWeb.Router do
  use CoreComponentStoriesWeb, :router
  import PhxLiveStorybook.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {CoreComponentStoriesWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    storybook_assets()
  end

  scope "/", CoreComponentStoriesWeb do
    pipe_through :browser

    get "/", PageController, :home
    live_storybook("/storybook", backend_module: CoreComponentStoriesWeb.Storybook)
  end

  # Other scopes may use custom stacks.
  # scope "/api", CoreComponentStoriesWeb do
  #   pipe_through :api
  # end
end
