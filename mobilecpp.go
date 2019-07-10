package mobilecpp

// #cgo LDFLAGS: -L . -l LinkMobile
// #cgo CXXFLAGS: -std=gnu++11 -stdlib=libc++
//
// extern int sum(int a, int b);
import "C"

// Sum ...
func Sum(a, b int) {
	return int(C.sum(C.int(a), C.int(b)))
}
