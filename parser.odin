// #+feature dynamic-literals

package snowden_parser
import "core:fmt"
import "core:os"
import "core:strings"
import "core:math"

// keywords :: []string{"print", "add", "subtract", "for", "while"}

find_keywords :: proc(line: string) -> int {
    
    tokens := strings.split(line, " ")
    res:int = -1
    token := tokens[0]
    switch token {
    case "print" :
	println(..tokens[1:])
	break
    case  :
	for token in tokens  {
	    if token == "=" {
		solve_exp(..tokens[2:])
	    }
	}
    }
    

	 
    return res
}

split_by_line :: proc(file: string) {
    lines := strings.split(file, "\n")
    idx: int
    for line, idx in lines {
	// fmt.printf("line -> %d -> %s\n", idx, line)
	find_keywords(line)
    }

}
