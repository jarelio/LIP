functor
import
   Browser
   %importacao do functor DigitalLogic
   DigitalLogicFunctor at 'C:/Users/Jarelio/Downloads/LIP/DigitalLogic/DigitalLogicFunctor.ozf' %caminho do arquivo
define
   A = 0|_
   B = 1|_
   Bin = 1|_
   
   %Full Subtractor
   {Browser.browse 'Diferença (A-B):'}
   AB = {DigitalLogicFunctor.xorG A B}
   {Browser.browse {DigitalLogicFunctor.xorG AB Bin}}

   {Browser.browse 'Empresta um:'}
   {Browser.browse {DigitalLogicFunctor.orG {DigitalLogicFunctor.andG {DigitalLogicFunctor.notG AB} Bin} {DigitalLogicFunctor.andG {DigitalLogicFunctor.notG A} B}}}
end