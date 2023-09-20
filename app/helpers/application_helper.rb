module ApplicationHelper
include Pagy::Frontend

  def render_mana_symbols(manacost)

    symbol_to_image = {
      '{W}' => 'mana_symbols/white_mana.svg',
      '{U}' => 'mana_symbols/blue_mana.svg',
      '{B}' => 'mana_symbols/black_mana.svg',
      '{R}' => 'mana_symbols/red_mana.svg',
      '{G}' => 'mana_symbols/green_mana.svg',
    }

    symbol_regex = /({[WUBRG]})/

    manacost.gsub(symbol_regex) do |match|
      image_tag(symbol_to_image[match], alt: match, width: 20, height: 20)
    end.html_safe
  end
end
