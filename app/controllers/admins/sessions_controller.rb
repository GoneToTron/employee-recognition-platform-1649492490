# frozen_string_literal: true
include Accessible
class Admins::SessionsController < Devise::SessionsController
  include Accessible
  skip_before_action :check_user, only: :destroy
  # ...
end