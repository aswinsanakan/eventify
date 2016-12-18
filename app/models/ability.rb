class Ability
  include CanCan::Ability

  def initialize(user)

    if user.nil?
        #can :read, Event
        #can :read, Venue
        
    elsif user.role? "admin"
        can :manage, :all 

    elsif user.role? "organizer"
        can [:update, :destroy], Event do |event|
            event.try(:user) == user
        end
        can [:my_events], Event
        can [:create, :read], Event

        can :read, Venue
        can :read, VenueBooking

        can [:read, :update, :destroy], EventBooking do |booking|
            booking.event.try(:user) == user
        end
        can :create, EventBooking

    elsif user.role? "venue_owner"
        can [:update, :destroy], Venue do |venue|
            venue.try(:user) == user
        end
        can [:create, :read], Venue
        can [:update, :destroy], VenueBooking do |booking|
            booking.try(:user) == user
        end
        can :read, Event
        can [:create, :read], VenueBooking 

    elsif user.role? "user"
        can :read, Event
        can :read, Venue
        can :read, VenueBooking
        can :create, EventBooking
        can :my_bookings, EventBooking
    end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
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
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
