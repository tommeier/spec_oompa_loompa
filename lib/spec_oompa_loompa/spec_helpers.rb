module SpecOompaLoompa
   module SpecHelpers
     #TODO : Write specs
     # Easily alter constants within specs to test effects
     # @param constants Hash A hash of constants and their values
     # @block Inside the block the constants take on the specified value and return to original at end
     # @example
     #  with_constants :RAILS_ENV  => 'custom_environment'  do
     #         TestBehaviour.in_custom_environment!
     #  end
     def with_constants(constants, &block)
       saved_constants = {}
       constants.each do |constant, val|
         parts = constant.to_s.split("::")
         konst_string = parts.pop
         konst_owner = parts.inject(Object){|k,p| k.const_get(p)}
         key = [konst_owner, konst_string]

         saved_constants[ key ] = konst_owner.const_get( konst_string )
         Kernel::silence_warnings { konst_owner.const_set( konst_string, val ) }
       end

       begin
         block.call
       ensure
         saved_constants.each do |(konst_owner, konst_string), orig_value|
           Kernel::silence_warnings { konst_owner.const_set( konst_string, orig_value ) }
         end
       end
     end

   end

end