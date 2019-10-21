functor
export
   
   %exportacao dos metodos do functor
   notGWT:NotGate %notGate without thread
   notG:NotG %notGate with thread
   andG:AndG
   orG:OrG
   nandG:NandG
   norG:NorG
   xorG:XorG
   
define
   
   %NotGate without thread
   fun {NotGate Xs}
      case Xs of X|Xr then (1-X)|{NotGate Xr} end
   end

   %NotG with thread
   local
      fun {NotLoop Xs}
	 case Xs of X|Xr then (1-X)|{NotLoop Xr} end
      end
   in
      fun {NotG Xs}
	 thread {NotLoop Xs} end
      end
   end

   %GateMaker (function generic that creates a logic gate)
   fun {GateMaker F}
      fun {$ Xs Ys}
	 fun {GateLoop Xs Ys}
	    case Xs#Ys of (X|Xr)#(Y|Yr) then
	       {F X Y}|{GateLoop Xr Yr}
	    end
	 end
      in
	 thread {GateLoop Xs Ys} end
      end
   end

   %logical port operations
   AndG ={GateMaker fun {$ X Y} X*Y end}
   OrG ={GateMaker fun {$ X Y} X+Y-X*Y end}
   NandG={GateMaker fun {$ X Y} 1-X*Y end}
   NorG ={GateMaker fun {$ X Y} 1-X-Y+X*Y end}
   XorG ={GateMaker fun {$ X Y} X+Y-2*X*Y end}

end   