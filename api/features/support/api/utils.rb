class Utils
    def show_request(hash_obj)

        "\n-> REQUEST:\n#{JSON.pretty_generate(json_obj)}\n" 
      
    end

    def show_response(hash_obj)

        "\n-> RESPONSE:\n#{JSON.pretty_generate(JSON.parse(hash_obj.to_s.force_encoding('UTF-8')))}\n" 
      
    end
    
    def show_response_partial(title, hash_obj)

        "\n-> #{title}:\n#{JSON.pretty_generate(JSON.parse(hash_obj.to_json.to_s))}\n"
        
    end

    def validate_schema(status, response)
        validation_schema = eval(File.read("#{$project_root}/features/schemas/#{status}.schema"))
            JSON::Validator.validate!(validation_schema, response.to_s)
    end
end