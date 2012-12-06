class MatchForm < MailForm::Base
  attribute :email,:validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :name, :validate => :true
  attribute :company, :validate => :true

  def headers
    {
      :subject => "My Matching Form",
      :to => "gtovar@incaztech.com",
      :from => %("#{name}" <#{email}>)
    }
  end


end
