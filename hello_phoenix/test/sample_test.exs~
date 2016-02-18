defmodule HelloPhoenix.SampleTest do
  use HelloPhoenix.ConnCase

  # Import Hound helpers
  use Hound.Helpers

  #Start Hound session
  hound_session
	IO.puts "hai"
  test "GET /" do
#   def run do
        navigate_to("http://localhost:4000")
	:timer.sleep(10000) # puts server to sleep
        assert page_source =~ "Welcome to Phoenix"
  end

   IO.puts "Namasteeeee"

#   def run do
#      Hound.start_session
#      IO.puts "Helloooooooooo"
#      test "GET /" do
#         navigate_to "http:abc.com"
#         IO.inspect page_title()
#	 :timer.sleep(5000) # puts server to sleep
#         IO.puts "Haiiiiiiiii"
#      end
#      # Automatically invoked if the session owner process crashes
#      Hound.end_session
#   end


#  hound_session
# test "the truth", meta do
#    navigate_to("http://example.com/guestbook.html")
#    element_id = find_element(:name, "message")
#    fill_field(element_id, "Happy Birthday ~!")
#    submit_element(element_id)
#    assert page_title() == "Thank you"
#  end



end
