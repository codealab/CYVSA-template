module YearsHelper

	def year (texto_default, titulo)
    text = texto_default

    if Year.all

      case titulo

      when "titulo"
        text = Year.first.title if !Year.first.title.blank?

      when "descripcion"
        text = Year.first.text if !Year.first.text.blank?
      
    	when "fecha"
        text = Year.first.date if !Year.first.date.blank?
      end
    end
    text.to_s.html_safe
  end

  


  

  def image
    logo_path = "/assets/3.png"
    logo_path = Year.first.image if Year.first
    logo_path
  end
end
