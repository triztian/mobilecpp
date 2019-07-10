package mobilecpp

/*
#cgo CXXFLAGS: -v -std=gnu++11 -stdlib=libc++
#cgo LDFLAGS: -L . -l LinkMobile

extern int sum(int a, int b);
extern char* concat(const char* a, const char* b);
extern char* exception(const char* msg);
*/
import "C"

// Sum ...
func Sum(a, b int) {
	return int(C.sum(C.int(a), C.int(b)))
}

// Exception ...
func Exception(msg string) string {
	return C.GoString(C.exception(C.CString(msg)))
}
