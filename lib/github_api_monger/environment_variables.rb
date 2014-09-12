# Please add any configuration keys here that need to be fetched from the config service
module GithubApiMonger
  class EnvironmentVariables

    REQUIRED_VARIABLES = [
      'GITHUB_API_KEY'
    ]

    OPTIONAL_VARIABLES = [
    ]

    ALL_VARIABLES = REQUIRED_VARIABLES + OPTIONAL_VARIABLES

    class << self

      def check
        missing_env_vars = REQUIRED_VARIABLES.select { |var| missing? var }

        if !missing_env_vars.empty?
          raise "Missing mandatory environment variables: #{missing_env_vars.join(', ')}"
        end
      end

      private

      def missing?(variable)
        ENV[variable].nil? || ENV[variable] == ''
      end

    end
  end
end
