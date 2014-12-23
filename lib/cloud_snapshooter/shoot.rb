require "aws-sdk"

AWS.config(
  :access_key_id => ENV['AWS_ACCESS_KEY'],
  :secret_access_key => ENV['AWS_SECRET_KEY'],
  :region => ENV['AWS_REGION']
)

module CloudSnapshooter
  class Shoot
    def initialize(volume_id = nil, description = nil)
      @volume_id = volume_id
      @description = description
    end

    def self.ec2_snapshot(volume_id, description)
      AWS.ec2.volumes[volume_id].create_snapshot(description)
    end
  end
end
