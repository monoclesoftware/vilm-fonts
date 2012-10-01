require "vilm-fonts/version"

module Vilm
  module Fonts
    FONTS = [
             "abraham_lincoln",
             "arvil_sans",
             "blackout_midnight",
             "blackout_sunrise",
             "blackout_two_am",
             "canaveral",
             "carton-slab",
             "Chunkfive",
             "cubano-regular",
             "deming_ep",
             "duke",
             "duke_fill",
             "duke_shadow",
             "homestead-display",
             "homestead-inline",
             "homestead-one",
             "homestead-regular",
             "homestead-three",
             "homestead-two",
             "Fanwood",
             "Fanwood_italic",
             "lavanderia_delicate",
             "lavanderia_regular",
             "lavanderia_sturdy",
             "League_Gothic",
             "LeagueScriptNumberOne",
             "liberator",
             "maven_pro_light_100",
             "maven_pro_light_200",
             "maven_pro_light_300",
             "nexa_bold",
             "nexa_light",
             # "oil_can",
             "outage",
             "outage_cut",
             "pigeon",
             # "ranger",
             "rokkitt",
             "stint_ultra_expanded",
             "sullivan-bevel",
             "sullivan-fill",
             "sullivan-regular",
             "theano-modern",
             "valencia",
             "valencia-black-oblique",
             "valencia-bold",
             "valencia-bold-oblique",
             "valencia-hairline",
             "valencia-hairline-oblique",
             "valencia-light",
             "valencia-light-oblique",
             "valencia-oblique",
             "wisdom_script"
            ]

    if defined?(Rails) && defined?(Rails::Railtie)
      class Engine < ::Rails::Engine
      end
    end

    def self.font_path(font_name = "Chunkfive")
      app_root  = Pathname.new(File.join(Gem::Specification.find_by_name("vilm-fonts").base_dir, "..", "..", "..", "..", "..", ".."))
      font_path = File.join(Gem::Specification.find_by_name("vilm-fonts").gem_dir, "vendor", "assets", "fonts", "#{font_name}-webfont.ttf")

      if (font_path[0,1] == '/')
        font_path = Pathname.new(font_path).relative_path_from(app_root)
      end
      font_path.to_s
    end
  end
end
