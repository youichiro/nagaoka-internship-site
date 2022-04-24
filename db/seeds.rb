BusinessCategory.insert_all([
  { name: 'IT・通信' },
  { name: '建設・建築' },
  { name: '自動車販売' },
])

if Student.find_by(email: 'admin1@gmail.com').nil?
  student = Student.create(
    email: 'admin1@gmail.com',
    password: 'password',
    confirmed_at: Time.zone.now,
  )
  StudentDetail.create(
    student: student,
    name: 'テスト生徒ユーザ',
    disable_notification: false,
    birthday: '2030-01-01',
    school_name: 'ほげ大学',
    department: 'ほげ学部',
  )
end

if Company.find_by(name: '株式会社ほげ').nil? && Employee.find_by(email: 'admin2@gmail.com').nil?
  company = Company.create(
    name: '株式会社ほげ',
    company_url: 'https://hoge.com',
    phone_number: '0000-00-0000',
    business_category: BusinessCategory.first,
    address: 'ほげ',
    business_description: '元気いっぱい',
    number_of_employee: 1,
    manager_name: 'youichiro',
    manager_email: 'admin@gmail.com',
  )
  employee = Employee.create(
    email: 'admin2@gmail.com',
    password: 'password',
    confirmed_at: Time.zone.now,
    company: company,
  )
  EmployeeDetail.create(
    employee: employee,
    name: 'テスト企業ユーザ',
  )
end
