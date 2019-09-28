functor
import
   Browser   
export
   %exportacao dos metodos do functor
   depthFirst:DepthFirst
   addXY:AddXY
define
   %Visita todos os nos da arvore da esquerda pra direita
   proc {DepthFirst Tree}
      case Tree
      of tree(left:L right:R ...) then
	 {Browser.browse Tree} %Caso queira visitar printando os nos
	 {DepthFirst L}
	 {DepthFirst R}
      [] leaf then
	 skip
      end
   end
   
   %Cria e retorna uma nova arvore baseada na passada como parametro, porem adicionando os campos x e y a todos os nos
   fun {AddXY Tree}
      case Tree
      of tree(left:L right:R ...) then
	 {Adjoin Tree
	  tree(x:_ y:_ left:{AddXY L} right:{AddXY R})}
      [] leaf then
	 leaf
      end
   end
end