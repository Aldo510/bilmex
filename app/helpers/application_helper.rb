module ApplicationHelper
  def nav_link_to(label, url)
    active_class = current_page?(url) ? "active fw-bold text-primary" : "text-dark"
    link_to url, class: "header-link hstack gap-2 fs-6 #{active_class}" do
      concat image_tag("svgs/secondary-leaf.svg", width: 20, height: 20, class: "img-fluid animate-spin")
      concat label
    end
  end
end
