require 'spec_helper'
describe "Model projects" do

  before do
    @project = Project.new(title: "Example Project", content:" Example content", image:"Example image", division_id:"Example 1")
  end

  subject {@project}

  it { should respond_to(:title)}
  it { should respond_to(:content)}
  it { should respond_to(:image)}
  it { should respond_to(:division_id)}
  it { should respond_to :division }



  # describe Project do

  #   it {should  belong_to :division}

  # end

  

  it {should be_valid}

  describe "when title is not present" do
    before {@project.title = " "}
    it {should_not be_valid}
  end

  describe "when content is not present" do
    before {@project.content = " "}
    it {should_not be_valid}
  end

  describe "when image is not present" do
    before {@project.image = " "}
    it {should_not be_valid}
  end
  describe "when division_id is not present" do
    before {@project.division_id = " "}
    it {should_not be_valid}
  end

  describe "when title is too long" do
    before { @project.title = "a" * 51 }
    it { should_not be_valid }
  end

   describe "when content is too long " do 
   	before {@project.content = "s" * 256}
   	it {should_not be_valid}
   end
end
