class Api::V1::BaseController < ActionController::API
  # Include Pundit for future use of authorization
  # include Pundit::Authorization

  # Uncomment these lines when you add authorization to your application
  # after_action :verify_authorized, except: :index
  # after_action :verify_policy_scoped, only: :index

  # Rescue from common ActiveRecord errors
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  # Uncomment when you implement authorization with Pundit
  # rescue_from Pundit::NotAuthorizedError,   with: :user_not_authorized

  private

  # Uncomment and use when you implement authorization
  # def user_not_authorized(exception)
  #   render json: {
  #     error: "Unauthorized #{exception.policy.class.to_s.underscore.camelize}.#{exception.query}"
  #   }, status: :unauthorized
  # end

  # Standard not found error response
  def not_found(exception)
    render json: { error: exception.message }, status: :not_found
  end

  # Set JSON as the default response format
  before_action :set_default_response_format

  def set_default_response_format
    request.format = :json
  end
end
