require 'always_has_one/railtie'

module AlwaysHasOne

  module ClassMethods

    def always_has_one *args
      has_one *args
      lazy_build_has_one_association args.first
    end

    private

    def lazy_build_has_one_association association
      association = association.to_sym
      actual_association = "actual_#{association}".to_sym
      build_association  = "build_#{association}".to_sym
      alias_method actual_association, association
      define_method(association) { send(actual_association) || send(build_association) }
    end

  end

end
