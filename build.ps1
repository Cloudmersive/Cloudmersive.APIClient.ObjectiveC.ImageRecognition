Remove-Item –path ./client –recurse

Invoke-WebRequest -Uri 'https://api.cloudmersive.com/image/docs/v1/swagger' -OutFile '.\image-api-swagger.json'
(Get-Content .\image-api-swagger.json).replace('localhost', "api.cloudmersive.com") | Set-Content .\image-api-swagger.json
(Get-Content .\image-api-swagger.json).replace('"http"', '"https"') | Set-Content .\image-api-swagger.json

& java -jar swagger-codegen-cli.jar generate -i .\image-api-swagger.json -l objc -o client -c packageconfig.json
(Get-Content ./client/CloudmersiveImageRecognitionApiClient.podspec).replace('CloudmersiveImageRecognitionApiClient/**/*.{m,h}', "client/CloudmersiveImageRecognitionApiClient/**/*.{m,h}") | Set-Content ./client/CloudmersiveImageRecognitionApiClient.podspec
(Get-Content ./client/CloudmersiveImageRecognitionApiClient.podspec).replace('CloudmersiveImageRecognitionApiClient/**/*.h', "client/CloudmersiveImageRecognitionApiClient/**/*.h") | Set-Content ./client/CloudmersiveImageRecognitionApiClient.podspec