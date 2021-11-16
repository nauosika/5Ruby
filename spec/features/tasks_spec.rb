require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  context 'carete new task' do
    scenario 'succesful' do
      visit new_task_path
        fill_in 'description', with: '測試內容'
        fill_in 'end_at', with: Time.now
        click_button 'Create Task'
        expect(page).to have_content('Task was succesfully created')
    end
  end
end
