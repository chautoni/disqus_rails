require 'spec_helper'

describe 'Integrate disqus into view' do
  let(:disqus_shortname) { 'disqus_shortname' }

  context 'required argument (disqus_shortname) is not set' do

    it 'raises exception' do
      expect do
        visit root_path
      end.to raise_error 'Required argument (disqus_shortname) is not given. Please set value for DisqusRails.disqus_shortname!'
    end
  end

  context 'required argument (disqus_shortname) is set' do
    before do
      DisqusRails.disqus_shortname = disqus_shortname
      visit root_path
    end

    it 'embeds Disqus content' do
      html.should include("var disqus_shortname = '#{disqus_shortname}';")
    end
  end

  context 'additional Disqus arguments' do
    let(:disqus_arguments) { [:disqus_shortname, :disqus_identifier, :disqus_title, :disqus_url] }
    let(:html_output) { html }

    before do
      disqus_arguments.each do |arg|
        DisqusRails.send("#{arg.to_s}=", arg.to_s)
      end
      visit root_path
    end

    it 'embeds all the arguments' do
      disqus_arguments.each do |arg|
        html_output.should include("var #{arg} = '#{arg}';")
      end
    end
  end
end
