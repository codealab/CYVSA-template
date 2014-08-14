module HomeHelper

  def logo
    logo_path = "/assets/logo.png"
    logo_path = Home.first.logo if Home.first
    logo_path
  end

  def photo(imagen)
    slider_path ="/assets/1.png"

    if Home.first

      case imagen

      when 1
        slider_path = Home.first.slider_image_one if !Home.first.slider_image_one.blank?

      when 2
        slider_path = Home.first.slider_image_two !Home.first.slider_image_two.blank?

      when 3
        slider_path = Home.first.slider_image_three !Home.first.slider_image_three.blank?

      end
    end
    slider_path
  end




  def slider (texto_default, titulo)
    text = texto_default

    if Home.first

      case titulo

      when "titulo"
        text = Home.first.slider_title_one if !Home.first.text_promocional.blank?

      when "boton"
        text = Home.first.slider_text_oneif !Home.first.slider_text_one.blank?

      end
    end
    text.to_s.html_safe
  end



  def promocional (texto_default, titulo)
    text = texto_default

    if Home.first

      case titulo

      when "titulo"
        text = Home.first.title_promocional if !Home.first.title_promocional.blank?

      when "descripcion"
        text = Home.first.text_promocional if !Home.first.text_promocional.blank?

      when "boton"
        text = Home.first.title_button_promocional if !Home.first.title_button_promocional.blank?

      end
    end
    text.to_s.html_safe
  end



  def history (texto_default, titulo)
    text = texto_default

    if Home.first

      case titulo

      when "titulo"
        text = Home.first.title_history if !Home.first.title_history.blank?

      when "descripcion"
        text = Home.first.text_history if !Home.first.text_history.blank?

      when "boton"
        text = Home.first.title_button_history if !Home.first.title_button_history.blank?

      end
    end
    text.to_s.html_safe
  end

  def recognition
    reconocimiento = "<span>Ponga su título aquí.</span>"
    if Home.first
      if !Home.first.title_recognition
        reconocimiento = Home.first.title_recognition.blank?

      end
    end
    reconocimiento.html_safe
  end


  def job (texto_default, titulo)
    text = texto_default

    if Home.first

      case titulo

      when "titulo"
        text = Home.first.title_job if !Home.first.title_job.blank?

      when "descripcion"
        text = Home.first.text_job if !Home.first.text_job.blank?

      when "boton"
        text = Home.first.title_button_job if !Home.first.title_button_job.blank?

      end
    end
    text.to_s.html_safe
  end


  def office (texto_default, titulo)
    text = texto_default

    if Home.first

      case titulo

      when "titulo"
        text = Home.first.title_office if !Home.first.title_office.blank?

      when "descripcion"
        text = Home.first.text_offce if !Home.first.text_office.blank?

      end
    end
    text.to_s.html_safe
  end



  def about_us (text_default, nombre )

    texto = text_default

    if Home.first

      case nombre

      when "about"
        texto = Home.first.title_contact if !Home.first.title_contact.blank?

      when "direccion"
        texto = Home.first.address if !Home.first.address.blank?

      when  "fax"
        texto = Home.first.fax if !Home.first.fax.blank?

      when "telefono"
        texto= Home.first.telephone if !Home.first.telephone.blank?

      when "email"
        texto = Home.first.email if !Home.first.email.blank?
      end
    end
    texto.to_s.html_safe

  end

end
