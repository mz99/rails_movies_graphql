require 'test_helper'

class Resolvers::CreateActorTest < ActiveSupport::TestCase
  def perform(args = {})
    Resolvers::CreateActor.new.call(nil, args, {})
  end

  test 'creating new actor' do
    actor = perform(
      name: 'Sean Penn',
      image: 'http://google.com/sean_penn',
    )

    assert actor.persisted?
    assert_equal actor.name, 'Sean Penn'
    assert_equal link.image, 'http://google.com/sean_penn'
  end
end
