@test "app folder exists" {
  ls /var/www/jaxrs_tutorial_test
}

@test "app is running" {
  curl localhost:8080/jaxrs_tutorial/hello/echo/hello_world \
    | grep -i 'hello_world'
}

