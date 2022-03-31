codegen: get
	@echo "Running code generation"
	@flutter pub run build_runner watch --delete-conflicting-outputs
get:
	@echo "Getting dependencies"
	@flutter pub get
build_apk:
	@echo "Build APK"
	@flutter build apk --release --dart-define API_KEY=
