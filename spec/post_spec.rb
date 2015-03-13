require 'rails_helper'

describe Post do
	
	it 'returns the post title' do
		post = Post.new({:title => "Resources for Programming"})
		expect(post.title).to eq ("Resources for Programming")
	end

	it 'validates the presence of post title' do
		post = Post.new({:title => ""})
		expect(post.save).to eq (false)
	end

end