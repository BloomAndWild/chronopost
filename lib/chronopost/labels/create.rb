# frozen_string_literal: true

module Chronopost
  module Labels
    class Create < Operation
      OPERATION = :shipping_v6

      DEFAULT_PARAMS = {
        esdValue: {
          shipperCarriesCode: '',
          shipperBuildingFloor: '',
          shipperServiceDirection: '',
        },
        headerValue: {
          accountNumber: '',
          idEmit: 'CHRFR',
          subAccount: 0,
        },
        shipperValue: {
          shipperName: '',
          shipperName2: '',
          shipperCivility: '',
          shipperContactName: '',
          shipperAdress1: '',
          shipperAdress2: '',
          shipperZipCode: '',
          shipperCity: '',
          shipperCountry: '',
          shipperCountryName: '',
          shipperEmail: '',
          shipperPhone: '',
          shipperMobilePhone: '',
          shipperPreAlert: 0,
        },
        customerValue: {
          customerName: '',
          customerName2: '',
          customerCivility: '',
          customerContactName: '',
          customerAdress1: '',
          customerAdress2: '',
          customerZipCode: '',
          customerCity: '',
          customerCountry: '',
          customerCountryName: '',
          customerEmail: '',
          customerPhone: '',
          customerMobilePhone: '',
          customerPreAlert: 0,
          printAsSender: 'N',
        },
        recipientValue: {
          recipientName: '',
          recipientName2: '',
          recipientCivility: '',
          recipientContactName: '',
          recipientAdress1: '',
          recipientAdress2: '',
          recipientZipCode: '',
          recipientCity: '',
          recipientCountry: '',
          recipientCountryName: '',
          recipientEmail: '',
          recipientPhone: '',
          recipientMobilePhone: '',
          recipientPreAlert: 0,
        },
        refValue: {
          customerSkybillNumber: '',
          PCardTransactionNumber: '',
          recipientRef: '',
          shipperRef: '',
        },
        skybillValue: {
          bulkNumber: '',
          skybillRank: '',
          masterSkybillNumber: '',
          codCurrency: 'EUR',
          codValue: '',
          customsCurrency: 'EUR',
          customsValue: 0,
          insuredCurrency: 'EUR',
          insuredValue: 0.0,
          portCurrency: '',
          portValue: 0.0,
          evtCode: 'DC',
          objectType: 'MAR',
          productCode: 86,
          service: 0,
          shipDate: '',
          shipHour: '',
          weight: '',
          weightUnit: 'KGM',
          height: '',
          length: '',
          width: '',
          content1: '',
          content2: '',
          content3: '',
          content4: '',
          content5: '',
          latitude: '',
          longitude: '',
          qualite: '',
          source: '',
          as: '',
          toTheOrderOf: '',
        },
        skybillParamsValue: {
          duplicata: 'N',
          mode: 'SPD',
          # withReservation: 1,
        },
        password: '',
        # modeRetour: 2,
        # numberOfParcel: 1,
        # multiParcel: 'N',
        version: 6.0,
        # scheduledValue: {
        #   appointmentValue: {
        #     timeSlotEndDate: nil,
        #     timeSlotStartDate: nil,
        #     timeSlotTariffLevel: nil,
        #   },
        #   expirationDate: nil,
        #   sellByDate: nil,
        # },
      }.freeze

      # @!visibility private
      def run
        Chronopost::Query.run(service, OPERATION, params_with_credentials)
      end

      private

      def service_name
        :shipping
      end

      def default_params
        DEFAULT_PARAMS
      end
    end
  end
end
