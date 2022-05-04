```mermaid
%%{init:{'theme':'neutral'}}%%

classDiagram
  students -- student_details
  students -- inactive_students
  employees -- employee_details
  employees -- inactive_employees

  business_categories -- companies
  companies -- employees
  companies -- internships

  students -- internship_carts
  students -- internship_orders
  internship_carts -- internships
  internship_orders -- internships

  students -- student_course_orders
  student_course_orders -- courses
  employees -- employee_course_orders
  employee_course_orders -- courses

  annountment_categories -- annountments

  class admin_users {
    *id
    *email
    *password
  }

  class students {
    *id
    *email
    *password
  }

  class inactive_students {
    *id
    *user_id
  }

  class student_details {
    *id
    *student_id
    *name
    disable_notification
    *birthday
    *school_name
    *department #学部学科
  }

  class employees {
    *id
    *email
    *password
    *company_id
  }

  class employee_details {
    *id
    *employee_id
    *name
  }

  class inactive_employees {
    *id
    *employee_id
  }

  class companies {
    *id
    *name
    company_url
    *phone_number
    *business_category_id #業種
    *address
    business_description
    number_of_employee
    *manager_name #担当者名
    *manager_email #担当者メールアドレス
  }

  class business_categories {
    *id
    *name
  }

  class internships {
    *id
    *company_id
    *title
    description
    start_date
    end_date
    deadline
    location
    target #対象
    acceptable_number #受け入れ可能人数
  }

  class internship_carts {
    *id
    *student_id
    *internship_id
  }

  class internship_orders {
    *id
    *student_id
    *internship_id
  }

  class courses {
    *id
    *title
    description
    *event_date
    deadline
    place
    target_user
    target_department
    *is_online
    acceptable_number #受け入れ可能人数
    others
  }

  class student_course_orders {
    *id
    *student_id
    *course_id
  }

  class employee_course_orders {
    *id
    *employee_id
    *course_id
  }

  class annountment_categories {
    *id
    *name
  }

  class annountments {
    *id
    *title
    *contents
    *annountment_category_id
  }
```
