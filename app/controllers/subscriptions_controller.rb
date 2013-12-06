class SubscriptionsController < ApplicationController

  def create
    # Try to get the user linked data instance
    user_id = params[:user_id]
    u = LinkedData::Client::Models::User.find(user_id)
    raise Exception if u.nil?
    # Try to get the ontology linked data instance
    ontology_id = params[:ontology_id]
    if ontology_id.start_with? 'http'
      ont = LinkedData::Client::Models::Ontology.find(ontology_id)
    else
      ont = LinkedData::Client::Models::Ontology.find_by_acronym(ontology_id).first
    end
    raise Exception if ont.nil?
    # Is this request to add or remove a subscription?
    subscribed = params[:subbed]  # string (not boolean)
    if subscribed.eql?("true")
      # Already subscribed, so this request must be a delete
      # Note that this routine removes ALL subscriptions for the ontology, regardless of type.
      u.subscription.delete_if {|sub| sub[:ontology].eql?(ont.acronym) }
    else
      # Not subscribed yet, so this request must be for adding subscription
      subscription = {ontology: ont.acronym, notification_type: "NOTES"} #NOTIFICATION_TYPES[:notes]}
      u.subscription.push(subscription)
    end
    # Try to update the user instance and the session user.
    begin
      error_response = u.update
      if error_response.nil?
        updated_sub = true
        #session[:user] = u
        # Cannot update session[:user] as above.  The session user object is special because it only
        # gets set when someone logs in and the user object returned when authenticating is the
        # only one that will contain the api key for security reasons. So we actually need to use
        # the update_from_params method, can’t just set the object to the user linked data instance.
        # TODO: update the subscribe details for the session[:user].
        #binding.pry
        #session[:user].update_from_params(params[:user])
      else
        updated_sub = false
        #errors = response_errors(error_response)
      end
    rescue
      updated_sub = false
    end
    render :json => { :updated_sub => updated_sub, :user_subscriptions => u.subscription }
  end

end
