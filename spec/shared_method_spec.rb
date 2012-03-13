require 'aruba/api'

describe '`shared` method' do
  include Aruba::Api

  it 'works' do
    write_file 'spec/shared_with_name_spec.rb', """
      require 'rspec-shared'

      describe do
        @@one = 1

        def shared_value
          @@one = @@one.next
        end

        shared(:foo) { shared_value }
        shared(:bar) { 'bar' }

        example { foo.should eq(2) }
        example { foo.should eq(2) }
        example { bar.should eq('bar') }

        describe do
          example { foo.should eq(2) }
        end
      end

      describe do
        shared(:foo) { :foo }
        example { foo.should eq(:foo) }
      end
    """

    run_simple 'rspec spec/shared_with_name_spec.rb', true
  end
end