require 'rails_helper'

describe 'Pages' do
  subject { page }

  describe '#root' do
    before { visit root_path }

    it { is_expected.to have_title('description | application') }
  end

  describe '#preferred' do
    before { visit preferred_path }

    it { is_expected.to have_title('preferred | application') }
  end

  describe '#default' do
    before { visit default_path }

    it { is_expected.to have_title('default | application') }
  end

  describe '#default_with_params' do
    before { visit default_with_params_path }

    it { is_expected.to have_title('default with params | application') }
  end

  describe '#no_title' do
    before { visit no_title_path }

    it { is_expected.to have_title('application') }
  end
end
