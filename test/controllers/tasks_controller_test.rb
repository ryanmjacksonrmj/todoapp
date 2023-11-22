require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/tasks.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Todo.count, data.length
  end

  test "create" do
    assert_difference "Todo.count", 1 do
      user = User.create(name: "Bob", email: "bob@test.com", password: "password")
      post "/tasks.json", params: { user_id: user.id, title: "abc123", description: "abc123", datetime: "2023-11-08 00:18:02.823842", completed: false }
      assert_response 200
    end
  end

  test "show" do
    get "/tasks/#{Todo.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "user_id", "title", "description", "deadline", "completed"], data.keys
  end

  test "update" do
    task = Todo.first
    patch "/tasks/#{task.id}.json", params: { title: "Updated title" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated title", data["title"]
  end

  test "destroy" do
    assert_difference "Todo.count", -1 do
      delete "/tasks/#{Todo.first.id}.json"
      assert_response 200
    end
  end

end
