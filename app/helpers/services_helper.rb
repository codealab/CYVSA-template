module ServicesHelper

	def service(texto_default, titulo)
    text = texto_default

    if Service.first

      case titulo

      when "titulo"
        text = Service.first.title if !Service.first.title.blank?

      when "descripcion"
        text = Service.first.content if !Service.first.content.blank?

      end
    end
    text.to_s.html_safe
  end
	
end
