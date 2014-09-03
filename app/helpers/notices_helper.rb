module NoticesHelper

	def imagen
    imagen_path = "/assets/info.jpeg"
    if Notice.first
       if !Notice.first.image 
        imagen_path = Notice.first.image.blank?
      end
    end
    imagen_path
  end
end
