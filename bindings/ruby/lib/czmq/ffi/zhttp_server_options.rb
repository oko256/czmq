################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Read the zproject/README.md for information about making permanent changes. #
################################################################################

module CZMQ
  module FFI

    # zhttp server.
    # @note This class is 100% generated using zproject.
    class ZhttpServerOptions
      # Raised when one tries to use an instance of {ZhttpServerOptions} after
      # the internal pointer to the native object has been nullified.
      class DestroyedError < RuntimeError; end

      # Boilerplate for self pointer, initializer, and finalizer
      class << self
        alias :__new :new
      end
      # Attaches the pointer _ptr_ to this instance and defines a finalizer for
      # it if necessary.
      # @param ptr [::FFI::Pointer]
      # @param finalize [Boolean]
      def initialize(ptr, finalize = true)
        @ptr = ptr
        if @ptr.null?
          @ptr = nil # Remove null pointers so we don't have to test for them.
        elsif finalize
          @finalizer = self.class.create_finalizer_for @ptr
          ObjectSpace.define_finalizer self, @finalizer
        end
      end
      # @param ptr [::FFI::Pointer]
      # @return [Proc]
      def self.create_finalizer_for(ptr)
        Proc.new do
          ptr_ptr = ::FFI::MemoryPointer.new :pointer
          ptr_ptr.write_pointer ptr
          ::CZMQ::FFI.zhttp_server_options_destroy ptr_ptr
        end
      end
      # @return [Boolean]
      def null?
        !@ptr or @ptr.null?
      end
      # Return internal pointer
      # @return [::FFI::Pointer]
      def __ptr
        raise DestroyedError unless @ptr
        @ptr
      end
      # So external Libraries can just pass the Object to a FFI function which expects a :pointer
      alias_method :to_ptr, :__ptr
      # Nullify internal pointer and return pointer pointer.
      # @note This detaches the current instance from the native object
      #   and thus makes it unusable.
      # @return [::FFI::MemoryPointer] the pointer pointing to a pointer
      #   pointing to the native object
      def __ptr_give_ref
        raise DestroyedError unless @ptr
        ptr_ptr = ::FFI::MemoryPointer.new :pointer
        ptr_ptr.write_pointer @ptr
        __undef_finalizer if @finalizer
        @ptr = nil
        ptr_ptr
      end
      # Undefines the finalizer for this object.
      # @note Only use this if you need to and can guarantee that the native
      #   object will be freed by other means.
      # @return [void]
      def __undef_finalizer
        ObjectSpace.undefine_finalizer self
        @finalizer = nil
      end

      # Create a new zhttp_server_options.
      # @return [CZMQ::ZhttpServerOptions]
      def self.new()
        ptr = ::CZMQ::FFI.zhttp_server_options_new()
        __new ptr
      end

      # Create options from config tree.
      # @param config [Zconfig, #__ptr]
      # @return [CZMQ::ZhttpServerOptions]
      def self.from_config(config)
        config = config.__ptr if config
        ptr = ::CZMQ::FFI.zhttp_server_options_from_config(config)
        __new ptr
      end

      # Destroy the zhttp_server_options.
      #
      # @return [void]
      def destroy()
        return unless @ptr
        self_p = __ptr_give_ref
        result = ::CZMQ::FFI.zhttp_server_options_destroy(self_p)
        result
      end

      # Get the server listening port.
      #
      # @return [Integer]
      def port()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::CZMQ::FFI.zhttp_server_options_port(self_p)
        result
      end

      # Set the server listening port
      #
      # @param port [Integer, #to_int, #to_i]
      # @return [void]
      def set_port(port)
        raise DestroyedError unless @ptr
        self_p = @ptr
        port = Integer(port)
        result = ::CZMQ::FFI.zhttp_server_options_set_port(self_p, port)
        result
      end

      # Get the address sockets should connect to in order to receive requests.
      #
      # @return [String]
      def backend_address()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::CZMQ::FFI.zhttp_server_options_backend_address(self_p)
        result
      end

      # Set the address sockets should connect to in order to receive requests.
      #
      # @param address [String, #to_s, nil]
      # @return [void]
      def set_backend_address(address)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::CZMQ::FFI.zhttp_server_options_set_backend_address(self_p, address)
        result
      end

      # Self test of this class.
      #
      # @param verbose [Boolean]
      # @return [void]
      def self.test(verbose)
        verbose = !(0==verbose||!verbose) # boolean
        result = ::CZMQ::FFI.zhttp_server_options_test(verbose)
        result
      end
    end
  end
end

################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Read the zproject/README.md for information about making permanent changes. #
################################################################################