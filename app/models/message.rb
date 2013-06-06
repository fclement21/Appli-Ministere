class Message
# Model du message
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :nom_environnement, :email, :subject, :body, :bdd
  BDD_TYPES = ["Mysql", "PostgreSQL"]
  validates :nom_environnement, :email, :bdd, :body, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end
