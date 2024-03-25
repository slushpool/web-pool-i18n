.DEFAULT: default
default:
	@echo "Please specify a target!"

.PHONY: format
format:
	yarn biome check --apply .

.PHONY: checkPoFiles
checkPoFiles:
	yarn run tsx \
	  ./.bin/checkPoFiles.mts . \
	    --filename="js" \
	    --ignoreKind="EMPTY_ARGUMENT" \
	    --ignoreKind="MALFORMED_ARGUMENT"

.PHONY: validate
validate: format checkPoFiles
