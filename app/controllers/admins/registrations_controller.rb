# frozen_string_literal: true
include Accessible

module Admins
  class Admins::RegistrationsController < Devise::RegistrationsController
    include Accessible
    skip_before_action :check_user, except: [:new, :create]
    # ...
  end