Profiling go code

```go
import (
	"fmt"
	"log"
	"os"
	"runtime"
	"runtime/pprof"
)
  
func main() {

	// profile CPU
	f, err := os.Create("CPU.prof")
	if err != nil {
		log.Fatal("could not create CPU profile: ", err)
	}
	defer f.Close() // error handling omitted for example
	if err := pprof.StartCPUProfile(f); err != nil {
		log.Fatal("could not start CPU profile: ", err)
	}
	defer pprof.StopCPUProfile()

	//
	// do stuff ...
	//

	// profile allocation
	f2, err := os.Create("mem.prof")
	if err != nil {
		log.Fatal("could not create memory profile: ", err)
	}
	defer f2.Close() // error handling omitted for example
	runtime.GC() // get up-to-date statistics
	if err := pprof.WriteHeapProfile(f2); err != nil {
		log.Fatal("could not write memory profile: ", err)
	}

}
```

and then use pprof to investigate things

see: [https://blog.golang.org/pprof](https://blog.golang.org/pprof)

`go tool pprof ...`
