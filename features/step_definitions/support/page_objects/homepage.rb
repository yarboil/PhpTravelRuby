class HomePage < SitePrism::Page
  set_url '/'

  section :nav_bar, '.nav.navbar-nav.navbar-right.go-left' do
    elements :list, 'li'
  end

  section :search_tab, '.nav.nav-tabs.nav-justified.RTL.pdr0' do
    elements :list_of_tabs, 'li'
  end
end
