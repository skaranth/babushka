require 'spec_helper'

describe Babushka::ImplicitSource do

  describe '#initialize' do
    it "should require a name" do
      expect { Babushka::ImplicitSource.new(nil) }.to raise_error(ArgumentError, "Implicit sources require a name.")
    end
    it "should accept the supplied name" do
      Babushka::Source.new('name').name.should == 'name'
    end
  end

  describe '#type' do
    it "should be :implicit" do
      Babushka::ImplicitSource.new('name').type.should == :implicit
    end
  end

  describe Babushka::ImplicitSource, '#path' do
    it "should be nil" do
      Babushka::ImplicitSource.new('name').path.should == nil
    end
  end

  describe Babushka::ImplicitSource, '#present?' do
    it "should be false" do
      Babushka::ImplicitSource.new('name').should_not be_present
    end
  end

  describe Babushka::ImplicitSource, '#remote?' do
    it "should not be remote" do
      Babushka::ImplicitSource.new('name').should_not be_remote
    end
  end

end
