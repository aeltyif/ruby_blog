require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { FactoryGirl.build(:post) }

  it 'is valid with valid attributes' do
    expect(post).to be_valid
  end

  it 'is not valid without title' do
    expect(Post.new(title: nil)).to_not be_valid
  end

  it 'is not valid without body' do
    expect(Post.new(body: nil)).to_not be_valid
  end
end
