require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  context 'task index init load' do
    scenario 'order by created_at' do
      task1 = Task.create!(:description => "測試內容一")
      task2 = Task.create!(:description => "測試內容二")
      visit tasks_path

      first_task = all('table>tbody>tr>td').first
      expect(first_task).to have_text("測試內容二")
    end
  end

  context 'carete new task' do
    scenario 'succesful' do
      visit new_task_path
      expect(page).to have_content('新增任務')

      within('form') do
        fill_in '內容', with: '測試新增內容'
        click_button '送出'
      end
        expect(page).to have_content('新增成功')

        task = Task.last
        expect(task.description).to eq('測試新增內容')
    end
  end
end
