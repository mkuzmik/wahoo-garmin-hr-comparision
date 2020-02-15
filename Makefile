init:
	virtualenv venv

install-deps:
	source venv/bin/activate; \
	pip install lock-requirements; \
	lock requirements.txt; \
	pip install -r requirements.txt; \

run:
	source venv/bin/activate; \
	jupyter notebook; \	

clean:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +

.PHONY: clean install-deps
