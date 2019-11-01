abstract sig Person { 
	kill : this -> Person}
one sig  A,B extends Person {}

pred dead[q:Person] { some Person.kill.q}

fact{
dead[B]
not dead[A]
}

pred show {}
run show
