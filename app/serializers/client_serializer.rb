class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :memberships_total

  # has_many :memberships

  def memberships_total
    total = 0
    self.object.memberships.each do |m|
      total += m[:charge]
    end
    total
  end

end
