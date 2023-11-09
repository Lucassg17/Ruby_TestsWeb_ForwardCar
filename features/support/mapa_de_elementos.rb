Dir[File.join(File.dirname(__FILE__), '../page_objects/*_page.rb')].each { |file| require file }

module PageObjects
  # def home
  #   @home ||= PageObject.new
  # end

  # def products
  #   @products ||= Prod_Objects.new
  # end
end
