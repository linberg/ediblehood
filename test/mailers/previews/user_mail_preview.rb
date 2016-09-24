#Preview all emails at http://localhost:3000/rails/mailers/UserMailer
class UserMailerPreview <ActionMailer::Preview
  def contact_form
    UserMailer.contact_form("john@example.com", "John", "Testy McTesterson")
  end
end
