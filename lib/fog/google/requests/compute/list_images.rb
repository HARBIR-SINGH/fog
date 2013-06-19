module Fog
  module Compute
    class Google

      class Mock

        def list_images
          Fog::Mock.not_implemented
        end

      end

      class Real

        def list_images(zone_name)
          api_method = @compute.images.list
          parameters = {
            'project' => @project
            'zone' => zone_name,
          }

          result = self.build_result(api_method, parameters)
          response = self.build_response(result)
        end

      end

    end
  end
end
