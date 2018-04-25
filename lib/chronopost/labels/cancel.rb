module Chronopost
  module Labels
    class Cancel < Operation
      OPERATION = :cancel_skybill

      DEFAULT_PARAMS = {
        accountNumber: '',
        password: '',
        language: 'fr_FR',
        skybillNumber: '',
      }.freeze

      def run
        Chronopost::Query.run(service, OPERATION, params_with_credentials)
      end

      private

      def service_name
        :tracking
      end

      def default_params
        DEFAULT_PARAMS
      end
    end
  end
end
