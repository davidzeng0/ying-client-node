mkdir -p src/proto
cd ying-proto
protoc \
	--plugin ../node_modules/.bin/protoc-gen-ts_proto \
	--ts_proto_out "../src/proto" \
	--ts_proto_opt "useOptionals=all" \
	--ts_proto_opt "env=node" \
	--ts_proto_opt "esModuleInterop=true" \
	--ts_proto_opt "initializeFieldsAsUndefined=false" \
	--ts_proto_opt "useDate=false" \
	--ts_proto_opt "outputPartialMethods=false" \
	--ts_proto_opt "exportCommonSymbols=false" \
	--ts_proto_opt "stringEnums=true" \
	$(find . -name "*.proto")