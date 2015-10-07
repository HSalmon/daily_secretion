namespace :daily_secretion do
  task import_images: :environment do
    images = flickr.photos.search(user_id: '131159677@N07')
    secretions = []
    images.each do |image|
      secretion = flickr.photos.getInfo(photo_id: image.id)
      s = Secretion.find_or_initialize_by(flickr_id: secretion.id)
      s.image_url = FlickRaw.url_o(secretion)
      s.thumb_url = FlickRaw.url_q(secretion)
      s.title = secretion.title
      s.save!
    end
  end
end