#!/bin/bash
#go mod init github.com/jlopezr/tf-custom-example/v2
go mod init
go fmt
go mod tidy
go build -o terraform-provider-example
# copy to .terraform
mkdir -p ~/.terraform.d/plugins/terraform-example.com/exampleprovider/example/1.0.0/darwin_amd64
cp terraform-provider-example ~/.terraform.d/plugins/terraform-example.com/exampleprovider/example/1.0.0/darwin_amd64/
