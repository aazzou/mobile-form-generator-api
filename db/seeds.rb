# frozen_string_literal: true

partner = Partner.create(name: 'Owline', email: 'support@owline.io', phone: '+212 669 10 76 26',status: true, address: 'None')
role_administrator = Role.create(name: 'Administrator')
role_backoffice = Role.create(name: 'Backoffice')
role_mobile = Role.create(name: 'Mobile')


cp01 = Company.create(name: 'Owline CP 01', email: 'cp01@owline.io', phone: '+212 669 10 76 26', status: true, address: 'None', partner: partner)
cp02 = Company.create(name: 'Owline CP 02', email: 'cp02@owline.io', phone: '+212 669 10 76 26', status: true, address: 'None', partner: partner)

user01 = User.create(fullname: 'Said Aazzou', email: 'said@aazzou.dev', password: 'secret01', role: role_administrator, company: cp01, partner: partner)
user02 = User.create(fullname: 'Jihane Aazzou', email: 'jihane@aazzou.dev', password: 'secret02', role: role_administrator, company: cp02, partner: partner)
