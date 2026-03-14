package vidwan

import "core:fmt"
import "core:os"

main:: proc(){
    args := os.args
    if len(args) > 1 {
	name := os.args[1]
	fmt.printf("COMPILING %s\n",os.args[1])
	f, ok := os.read_entire_file(name, context.allocator)

	if !(ok) {
	    fmt.println("Couldn't read the file")
	    os.exit(1)
	}

	defer delete(f,context.allocator)

	string_file := string(f)
	split_by_line(string_file)
	
    } else {
	fmt.println("vidwan [FILENAME.vd]")
    }
    
}
