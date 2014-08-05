require 'spec_helper'
describe "Model category" do
  before do
    @category = Category.new(name: "Example category")
  end

  subject {@category}

  it { should respond_to :name}
  it { should respond_to :divisions}


  #  describe Category do
  #   it {should have_many :divisions}
  # end

  it {should be_valid}

  describe "when name is not present" do
    before {@category.name = " "}
    it {should_not be_valid}
  end


  describe "when name is too long" do
    before { @category.name = "a" * 21 }
    it { should_not be_valid }
  end 
end
