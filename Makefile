compile:
	coffee --join nebula.js -o js/ -cw src/ &
server:
	# ruby -run -e httpd . -p3000
	# python -m SimpleHTTPServer 3000
	http-server . -p 3000 &
open:
	open http://localhost:3000/index.html
run: compile server open

