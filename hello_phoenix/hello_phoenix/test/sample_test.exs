defmodule HelloPhoenix.SampleTest do
  use HelloPhoenix.ConnCase
  use ExUnit.Case

  # Import Hound helpers
  use Hound.Helpers

  #Start Hound session

  hound_session


  test "GET Phoenix framework page" do

        navigate_to("http://localhost:4000")

#		:timer.sleep(9000) # puts server to sleep

        assert page_source =~ "Welcome to Phoenix"

	assert("Hello HelloPhoenix!" == page_title)
  end





    test "should fill a field with a value" do

        navigate_to "https://accounts.google.com/AddSession?hl=en&continue=https://mail.google.com/mail&service=mail#identifier"

        IO.puts " "

        IO.puts current_url

#        	 :timer.sleep(8000) # puts server to sleep

        element_id = find_element(:name, "Email")
	
        fill_field(element_id, "karthik.uppoor@prueba.io")

#        	:timer.sleep(8000) # puts server to sleep

        assert attribute_value(element_id, "value") == "karthik.uppoor@prueba.io"
	
        element_id = find_element(:id, "next")

        click element_id

        IO.puts current_url

#             :timer.sleep(2000) # puts server to sleep

        element_id = find_element(:id, "Passwd")
	
        fill_field(element_id, "KARTHIK140956030")

#	     :timer.sleep(8000) # puts server to sleep

        assert attribute_value(element_id, "value") == "KARTHIK140956030"

        element_id = find_element(:id, "signIn")

        click element_id

             :timer.sleep(9000) # puts server to sleep

    end

end
