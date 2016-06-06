class TestSms < ActionSmser::Base
  def hello_user(to, from, user)
    str = "Hello #{user}."
    sms(:to => to, :from => from, :body => str)
  end
end