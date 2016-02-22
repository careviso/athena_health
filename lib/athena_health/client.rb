module AthenaHealth
  class Client
    def initialize(version:, key:, secret:)
      @api = AthenaHealth::Connection.new(version: version, key: key, secret: secret)
    end

    include Endpoints::Practices
    include Endpoints::Departments
    include Endpoints::Patients
    include Endpoints::Appointments
  end
end
