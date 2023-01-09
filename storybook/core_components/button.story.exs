defmodule Storybook.CoreComponents.Button do
  use PhxLiveStorybook.Story, :component

  def function, do: &Elixir.CoreComponentStoriesWeb.CoreComponents.button/1

  def variations do
    [
      %Variation{
        id: :default,
        slots: ["Button"]
      }
    ]
  end
end
