package mobilecpp

/*
#cgo CXXFLAGS: -v -std=gnu++11 -stdlib=libc++
#cgo LDFLAGS: -L . -l LinkMobile.universal

extern int sum(int a, int b);
extern char* concat(const char* a, const char* b);
extern char* exception(const char* msg);
*/
import "C"

// Sum ...
func Sum(a, b int) int {
	return int(C.sum(C.int(a), C.int(b)))
}

// Concat ...
func Concat(a, b string) string {
	return C.GoString(C.concat(C.CString(a), C.CString(b)))
}

// Exception ...
func Exception(msg string) string {
	return C.GoString(C.exception(C.CString(msg)))
}
