# frozen_string_literal: true

require 'interactor/initializer'

module Chronopost
  class Operation
    include Interactor::Initializer

    initialize_with :params

    # @!visibility private
    def run
      raise NotImplementedError
    end

    private

    def service_name
      raise NotImplementedError
    end

    def default_params
      raise NotImplementedError
    end

    def service
      Chronopost.services.resolve(service_name)
    end

    def params_with_defaults
      service.inject_defaults(params, default_params)
    end

    def params_with_credentials
      service.inject_credentials(params, default_params)
    end
  end
end
