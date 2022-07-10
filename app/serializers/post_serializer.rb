class PostSerializer < ActiveModel::Serializer
  attributes :title, :content

  has_many :tags
  belongs_to :author, serializer: AuthorNameSerializer

  def author_name
    self.object.author.name
  end
end
