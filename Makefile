all:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags '-extldflags "-static"' -o pget
	CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -ldflags '-extldflags "-static"' -o pget.exe

clean:
	rm ./pget
