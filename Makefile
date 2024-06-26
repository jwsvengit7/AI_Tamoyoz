## help: print this help message
help:
	@echo 'Usage: make <command>'
	@echo 'Commands'
	@sed -n "s/^##//p" ${MAKEFILE_LIST} | column -t -s ':' | sed -e 's/^/ /'

confirm:
	@echo -n 'Are you sure? [y/N] ' && read ans && [ $${ans:-N} = y ]

## clean-and-get: clean project and get dependencies
clean-and-get:
	flutter clean; flutter pub get;

## generate: generate code files
generate:
	dart run build_runner build --delete-conflicting-outputs

watchRunner:
	dart run build_runner watch --delete-conflicting-outputs

## run-dev: run dev flavor code locally
run-dev:
	flutter run --flavor dev -t lib/main.dart

## build-dev: build dev flavor
build-dev:
	flutter build apk --flavor dev -t lib/main_dev.dart 

## add-dev: add package for development only [make add-dev pkg=<package_name>]
add-dev:
	flutter pub add dev:${pkg}

## add: add package [make add pkg=<package_name>]
add:
	flutter pub add ${pkg}

## feature: create folder structure for a new app [make feature fname=<app_name>]
feature: confirm
	cd lib/feature; \
	mkdir ${fname}; \
	touch ${fname}/_${fname}_injection.dart; \
	touch ${fname}/mock_${fname}_injection.dart; \
	mkdir ${fname}/infrastructure ${fname}/domain ${fname}/app ${fname}/presentation; \
	mkdir ${fname}/infrastructure/adapters ${fname}/infrastructure/datasource  ${fname}/infrastructure/models; \
	mkdir ${fname}/domain/objects ${fname}/domain/services; \
	mkdir ${fname}/presentation/screens ${fname}/presentation/widgets; \
	touch ${fname}/presentation/_${fname}_routes.dart; \
	echo "${fname} feature created successfully."

.PHONY: help, confirm, clean-and-get, generate, build-dev, add, add-dev, feature


