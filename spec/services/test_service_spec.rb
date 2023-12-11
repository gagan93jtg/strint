RSpec.describe Strint::Services::TestService do
  context "Test the service" do
    subject { described_class.new }

    before do
      subject.create_test("John")
    end

    it "expects test model object to be created" do
      expect(subject.tests.size).to eq(1)
    end

    it "expects correct object to be created" do
      expect(subject.tests.first.name).to eq("John")
    end
  end
end
