require_relative './test_init'

context "Database Connection" do
  session = MessageStore::Postgres::Session.build

  refute(session.connected?)

  test "Connects on first use" do
    session.execute('SELECT 1;')
  end
end
