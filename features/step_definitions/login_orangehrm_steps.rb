Dado("que esteja no site") do
  visit("https://opensource-demo.orangehrmlive.com/")

end

Quando("efetuar o login") do
  fill_in('txtUsername', with:'admin')
  fill_in('txtPassword', with:'admin123')
  click_button('btnLogin')
end

Entao("adicionar um novo empregado") do
  find(:xpath, '//*[@id="menu_pim_viewPimModule"]').click
  click_button('btnAdd')
  fill_in('firstName', with:'Icaro')
  fill_in('middleName', with:'Rocha')
  fill_in('lastName', with:'Passos')
  click_button('btnSave')
end

Dado("que já tenha um cadastro") do                                            
  visit("https://opensource-demo.orangehrmlive.com/")
end                                                                            
                                                                               
Quando("efetuar o login e entrar na lista") do                                 
  fill_in('txtUsername', with:'admin')
  fill_in('txtPassword', with:'admin123')
  click_button('btnLogin')
  find(:xpath, '//*[@id="menu_pim_viewPimModule"]').click

end                                                                            
                                                                               
Entao("editar os dados de um empregado existente") do                          
  click_link('Icaro Rocha')
  click_button('btnSave')
  fill_in('personal_txtOtherID', with:'012345')
  click_button('btnSave')
  click_link('Contact Details')
  click_button('btnSave')
  fill_in('contact_street1', with:'Av Tamboré')
  fill_in('contact_city', with:'São Paulo')
  fill_in('contact_city', with:'São Paulo')
  fill_in('contact_emp_mobile', with:'5511994082345')
  fill_in('contact_emp_work_email', with:'icr_passos@gmail.com')
  select('Brazil', :from => 'contact[country]')
  click_button('btnSave')
  click_link('Emergency Contacts')
  click_button('btnAddContact')
  fill_in('emgcontacts_name', with:'Maria Aparecida')
  fill_in('emgcontacts_relationship', with:'Mãe')
  fill_in('emgcontacts_mobilePhone', with:'5511998765677')
  click_button('btnSaveEContact')
  click_link('Job')
  click_button('btnSave')
  select('Finance Manager', :from => 'job[job_title]')
  select('New York Sales Office', :from => 'job[location]')
  click_button('btnSave')






end                                                                            