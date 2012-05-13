module ApplicationHelper
  def tel_to(text)
      phone = number_to_phone(text, :country_code => 1);
      link_to text, "tel:#{phone}"
    end
end
