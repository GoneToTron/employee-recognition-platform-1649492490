require 'rails_helper'

RSpec.describe Employee, type: :model do
  employee = build(:employee, email: "employee#{t}@test.com", password:'password123')
end
