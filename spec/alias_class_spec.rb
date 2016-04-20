require 'spec_helper'

class Hello
  class World
    class Extra
      class Long
        class Nesting
          def hello
            "Puts it took a long time to get here"
          end
        end
      end
    end
  end
end

class Test
  include AliasClass
  alias_class Hello::World::Extra::Long::Nesting, "Greeter"

  def hello
    Greeter.new.hello
  end
end

describe AliasClass do
  it 'has a version number' do
    expect(AliasClass::VERSION).not_to be nil
  end

  it 'will alias the class name' do
    expect(Test.new.hello).to eq Hello::World::Extra::Long::Nesting.new.hello
  end

  it 'will not propagate the constant assignment to outside the class' do
    expect{ Test::Greeter }.not_to raise_exception
    expect{ Greeter }.to raise_exception(NameError)
  end
end
