namespace :daily_secretion do
  task import_art: :environment do
    secretions = []
    images = flickr.photosets.getPhotos(user_id: '131159677@N07',
                                        photoset_id: '72157657327237584').photo.map do |image|
      secretion = flickr.photos.getInfo(photo_id: image.id)
      s = Secretion.find_or_initialize_by(flickr_id: secretion.id)
      s.image_url = FlickRaw.url_o(secretion)
      s.thumb_url = FlickRaw.url_q(secretion)
      s.title = secretion.title
      s.save!
    end
  end
end