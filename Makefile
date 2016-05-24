yaml_files := $(wildcard src/*.yaml)
json_files := $(patsubst src/%.yaml,%.json,$(yaml_files))

.PHONY: json
json: $(json_files)

%.json: src/%.yaml
	scripts/yaml_to_json $< $@
