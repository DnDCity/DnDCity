class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)

    if user.has_role? :admin
      can :manage, :all ## remove this later when we have things better defined
      can :manage, :users
      can :manage, :roles
      can :manage, FeatType
      can :manage, Feat
      can :manage, Spell
      can :manage, Weapon
    end

    if user.has_role? :editor
      can :manage, Size
    end

    if user.persisted? # user exists
       #can :read, :all
       can :manage, Campaign, user_id: user.id # you can manage your own
       can :manage, Character, user_id: user.id # you can manage your own
       can :manage, Weapon, user_id: user.id
       can :create, Character
       can :create, Campaign
       can :create, Weapon
    end
    
    # Anybody
    can :read, Campaign, public: true # only allow public viewing if public
    can :read, Character, public: true # only allow public viewing if public
    can :read, FeatType
    can :read, Feat
    can :read, CharacterClass
    can :read, Race
    can :read, Size
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
