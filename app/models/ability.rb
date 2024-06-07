class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    elsif user.manage?
      can %i[create destroy update], MusicRecord
    else
      can %i[index show], MusicRecord
      can :show, User
      can [:create, :update, :destroy, :show], Order do |order|
        order.try(:user_id) == user.id
      end
    end
  end
end
