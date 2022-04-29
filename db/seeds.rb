BusinessCategory.insert_all([
  { name: 'IT・通信' },
  { name: '建設・建築' },
  { name: '自動車販売' },
])

AdminUser.create(
  email: 'admin@gmail.com',
  password: 'password',
  confirmed_at: Time.zone.now,
)

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

student2 = Student.create(
  email: 'admin11@gmail.com',
  password: 'password',
  confirmed_at: Time.zone.now,
)
StudentDetail.create(
  student: student2,
  name: 'テスト生徒ユーザ2',
  disable_notification: false,
  birthday: '2030-01-01',
  school_name: 'ほげ大学',
  department: 'ほげ学部',
)

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

company2 = Company.create(
  name: '株式会社ほげ2',
  company_url: 'https://hoge.com',
  phone_number: '0000-00-0000',
  business_category: BusinessCategory.first,
  address: 'ほげ',
  business_description: '元気いっぱい',
  number_of_employee: 1,
  manager_name: 'youichiro',
  manager_email: 'admin@gmail.com',
)
employee2 = Employee.create(
  email: 'admin21@gmail.com',
  password: 'password',
  confirmed_at: Time.zone.now,
  company: company2,
)
EmployeeDetail.create(
  employee: employee2,
  name: 'テスト企業ユーザ2',
)
