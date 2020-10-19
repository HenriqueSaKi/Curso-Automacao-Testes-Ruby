Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

#require 'ajax_page.rb'

module PageObjects
    def home
        @home ||= MapeandoElementoPage.new
    end
end