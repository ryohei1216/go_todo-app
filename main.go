package main

import (
	"fmt"

	"sample_todo/app/controllers"
	"sample_todo/app/models"
)

func TestConnection() {

}

func main() {
	fmt.Println(models.Db)
	go controllers.StartMainServer()

	for {

	}
}
