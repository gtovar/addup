class ContactForm < MailForm::Base
  attribute :email,:validates => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :name, :validates => :true

  def headers
    {
      :subject => "My Contact Form",
      :to => "gtovar@incaztech.com",
      :from => %("#{name}" <#{email}>)
    }
  end


end
