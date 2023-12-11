module Strint
  module Services
    class TestService
      attr_accessor :tests

      def initialize
        self.tests = Array.new
      end

      def create_test(name)
        tests << Strint::Models::TestModel.new(name)
      end
    end
  end
end
