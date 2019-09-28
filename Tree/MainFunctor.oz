functor
import
   Browser
   %importacao do functor tree
   TreeOperations at 'C:/Users/Jarelio/Downloads/LIP/Tree/TreeFunctor.ozf' %caminho do arquivo
define
   %criacao da arvore
   Arvore=tree(key:a val:111
	       left:tree(key:b val:55
			 left:tree(key:x val:100
				   left:tree(key:z val:56 left:leaf right:leaf)
				   right:tree(key:w val:23 left:leaf right:leaf))
			 right:tree(key:y val:105 left:leaf
				    right:tree(key:r val:77 left:leaf right:leaf)))
	       right:tree(key:c val:123
			  left:tree(key:d val:119
				    left:tree(key:g val:44 left:leaf right:leaf)
				    right:tree(key:h val:50
					       left:tree(key:i val:5 left:leaf right:leaf)
					       right:tree(key:j val:6 left:leaf right:leaf)))
			  right:tree(key:e val:133 left:leaf right:leaf)))
   
   %criacao da arvore2 baseada na arvore porem com a adicao dos campos x e y
   Arvore2={TreeOperations.addXY Arvore}

   %printa arvore
   {Browser.browse 'Print da Arvore 1'}
   {Browser.browse Arvore}

   %printa arvore2
   {Browser.browse 'Print da Arvore 2'}
   {Browser.browse Arvore2}

   %{Browser.browse 'Print de todos os nos da Arvore 1'}
   %busca em profundidade na arvore, ja printa os valores dos nos da arvore (browse no functor tree)
   %{TreeOperations.depthFirst Arvore}
end