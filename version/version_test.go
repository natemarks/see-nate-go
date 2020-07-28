package version_test

import (
	"testing"

	"github.com/natemarks/see-nate-go/version"
)

func TestVersion(t *testing.T) {
	if version.Version != "0.0.1" {
		t.Error("Expected 0.0.1")
	}
}
