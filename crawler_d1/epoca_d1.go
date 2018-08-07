package main

import (
	"fmt"
	"time"
	"github.com/gocolly/colly"
	"github.com/gocolly/colly/debug"
)

func main() {
	// call the crawler methods from colly package
	c := colly.NewCollector(
		 colly.Debugger(&debug.LogDebugger{}),
		 colly.MaxDepth(1),
	)
	// parametrize the crawler settings
	c.Limit(&colly.LimitRule{
		DomainGlob:  "*",
		Parallelism: 1,
		Delay:       5 * time.Second,
		RandomDelay: 1 * time.Second,
	})
	// follows href <a> html tokens
	c.OnHTML("a[href]", func(e *colly.HTMLElement) {
		link := e.Attr("href")
		fmt.Println(link)
		e.Request.Visit(link)
	})
	// define domain depth 0 
	c.Visit("https://www.epocacosmeticos.com.br/")
}
