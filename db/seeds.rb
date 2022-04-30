BusinessCategory.insert_all([
  { name: 'メーカー(電気・電子・機械・食品・その他)' },
  { name: '建設・建築' },
  { name: '小売・流通・自動車販売・運送・運輸' },
  { name: '卸売・商社' },
  { name: 'ソフトウエア・IT・通信' },
  { name: 'サービス・飲食・宿泊' },
  { name: '金融・保険' },
  { name: '官公庁・組合・団体・非営利団体' },
  { name: 'その他' },
])

AdminUser.create(
  email: ENV.fetch('ADMIN_USER_EMAIL'),
  password: ENV.fetch('ADMIN_USER_PASSWORD'),
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
