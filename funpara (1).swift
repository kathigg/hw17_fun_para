/*run this in swift playground and you will get an answer 0 (print j)
 
NOW NOW NOW; I don't just want the answer. I want the complete runtime stack, when
the program executes with retun address(RA), dynamic link(DL) and the 
static link(SL) and the enviornment pointer(EP). Ofcourse this is a stack and there 
is a Top which points to the top of the statck, we call it SP. We usually don't show it, since its implicit.
Make sure you show what happens to the statck when the function returns etc.
*/ 


func main(){
    var j = 0
    var m = 0
    func P(x : (Int)-> (), dd: Int) {
        var d = dd
        func Q(mm : Int){
            var m = mm
            m = m + 1
            j = d + m
            x(m)
        }//end Q
        
       d = d + 1
        if (d < 3) {
            x(d)
            P(x: Q, dd: d)
        }
        else {
            x(d)
            print (j)
        }
    }//endP
    func Q(m: Int){
        j = 0
    }
    P(x:Q, dd:0)
    
}//end main
main()

