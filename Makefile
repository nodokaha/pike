SHELL := $(shell which bash)

all: venv 
	source ./venv/bin/activate && python3 main.py 

test_glfw3: venv
	source ./venv/bin/activate && python3 integrations_glfw3.py

real_all:
	pip3 install -r requirements.txt
	python3 main.py

real_test_glfw3:
	python3 integrations_glfw3.py

venv:
	python3 -m venv venv
	source venv/bin/activate && pip3 --require-virtualenv install -r requirements.txt

clean:
	rm -rf venv
