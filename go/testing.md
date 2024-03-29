## Testing and Benchmarks in go

### test coverage

[visualising test coverage](https://golangdocs.com/code-coverage-in-golang)

e.g., run `go test -v ./... -coverprofile=coverage.out; go tool cover -html=coverage.out`

### writing tests and benchmarks

e.g. `main_test.go`

```go
import (
	"testing"
)

func BenchmarkSetByteArrayBit(b *testing.B) {
	b.ReportAllocs()
	d := []byte{0, 0}
	for i := 0; i < b.N; i++ {
		SetByteArrayBit(d, 7)
	}
}


func TestDecoding(t *testing.T) {
	nucs := []byte{'A', 'G', 'C', 'T', 'R', 'M', 'W', 'S', 'K', 'Y', 'V', 'H', 'D', 'B', 'N', '-', '?',
			'a', 'g', 'c', 't', 'r', 'm', 'w', 's', 'k', 'y', 'v', 'h', 'd', 'b', 'n'}

	EA := MakeEncodingArray()
	DA := MakeDecodingArray()

	for _, nuc := range(nucs) {
		a := EA[nuc]
		b := DA[a]
		if strings.ToUpper(string(nuc)) != b {
			t.Errorf("problem in decoding test: %s", string(nuc))
		}
	}
}

```

and to run them

```sh
go test ./...

go test -bench=.
```

The idiomatic way to force go to run cached tests is with `-count=1` after the `go test` command.
