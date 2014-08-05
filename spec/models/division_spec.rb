require 'spec_helper'
describe "Model division" do
  before do
    @division = Division.new(name: "Example division", category_id: "Example 1")
  end

  subject {@division}

  it { should respond_to(:name)}
  it { should respond_to(:category_id)}
  it { should respond_to(:projects)}
  it { should respond_to(:category)}

  # describe Division do
  #   it {should have_many :projects}
  #   it {should belong_to :category}
  # end


  it {should be_valid}

  describe "when name is not present" do
    before {@division.name = " "}
    it {should_not be_valid}
  end

  describe "when category_id is not present" do
    before {@division.category_id = " "}
    it {should_not be_valid}
  end


  describe "when name is too long" do
    before { @division.name = "a" * 21 }
    it { should_not be_valid }
  end
end
