defmodule CoreComponentStoriesWeb.Storybook do
  use PhxLiveStorybook,
    otp_app: :core_component_stories_web,
    content_path: Path.expand("../../storybook", __DIR__),
    # assets path are remote path, not local file-system paths
    css_path: "/assets/storybook.css",
    js_path: "/assets/storybook.js",
    sandbox_class: "core-component-stories-web"
end
