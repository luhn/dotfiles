
# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# Use to install packages outside of virtualenv
syspip(){
	PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

syspip3(){
	PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}
