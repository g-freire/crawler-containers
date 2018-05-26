package main

import (
	"fmt"
	"time"
	"github.com/gocolly/colly"
	"github.com/gocolly/colly/debug"
)

func main() {
	// instancia coletor com depth e debug 
	c := colly.NewCollector(
		 colly.Debugger(&debug.LogDebugger{}),
		 colly.MaxDepth(2),
	)
	// parametriza os limites do coletor
	c.Limit(&colly.LimitRule{
		DomainGlob:  "*",
		Parallelism: 1,
		Delay:       5 * time.Second,
		RandomDelay: 1 * time.Second,
	})
	// segue elementos com tag <a> e atributo href
	c.OnHTML("a[href]", func(e *colly.HTMLElement) {
		link := e.Attr("href")
		fmt.Println(link)
		e.Request.Visit(link)
	})
	// define domain depth 0 
	c.Visit("https://www.epocacosmeticos.com.br/")
}
