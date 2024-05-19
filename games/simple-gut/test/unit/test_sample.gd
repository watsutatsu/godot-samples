extends GutTest

func test_pass():
	assert_true(true, "Should pass, true is true")
	
func test_fail():
	assert_true(false, "Should pass, true is true")
