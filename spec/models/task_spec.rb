require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'validations' do
    context '資料限制' do
      it '不能空白' do
        task = Task.new(description: "")
        expect(task).not_to be_valid
      end

      it '不能低於5個字' do
        task = Task.new(description: "去睡覺")
        expect(task).not_to be_valid
      end
    end
  end
end
