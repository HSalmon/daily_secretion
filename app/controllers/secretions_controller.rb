class SecretionsController < ApplicationController
  
  def index
    @secretions = Secretion.where(kind: 'art')
  end

  def zines
    @issue_one = Secretion.find_by flickr_id: '22079492859'
    @issue_two = Secretion.find_by flickr_id: '22253840642'
    @issue_three = Secretion.find_by flickr_id: '22079766089'
    @issue_four = Secretion.find_by flickr_id: '22078945688'
  end

  def about
  end

  def contact
  end
end
