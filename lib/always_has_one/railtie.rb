module AlwaysHasOne

  class Railtie < Rails::Railtie

    initializer 'always_has_one.include' do
      ActiveSupport.on_load(:active_record) do
        ActiveRecord::Base.send :extend, AlwaysHasOne::ClassMethods
      end
    end

  end

end
