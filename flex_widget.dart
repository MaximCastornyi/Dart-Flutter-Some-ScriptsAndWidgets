i m p o r t   ' p a c k a g e : f l u t t e r / m a t e r i a l . d a r t ' ;  
  
 v o i d   m a i n ( )   = >   r u n A p p ( M y A p p ( ) ) ;  
  
 c l a s s   M y A p p   e x t e n d s   S t a t e l e s s W i d g e t   {  
     @ o v e r r i d e  
     W i d g e t   b u i l d ( B u i l d C o n t e x t   c o n t e x t )   {  
         r e t u r n   n e w   M a t e r i a l A p p (  
                 t i t l e :   ' F l u t t e r   D e m o ' ,  
                 t h e m e :   n e w   T h e m e D a t a (  
                     p r i m a r y S w a t c h :   C o l o r s . b l u e ,  
                 ) ,  
                 h o m e :   n e w   H o m e W i d g e t ( t i t l e :   ' F l e x ' ) ) ;  
     }  
 }  
 c l a s s   H o m e W i d g e t   e x t e n d s   S t a t e f u l W i d g e t   {  
     H o m e W i d g e t ( { K e y   k e y ,   t h i s . t i t l e } )   :   s u p e r ( k e y :   k e y ) ;  
     f i n a l   S t r i n g   t i t l e ;  
     @ o v e r r i d e  
     _ M y H o m e P a g e S t a t e   c r e a t e S t a t e ( )   = >   n e w   _ M y H o m e P a g e S t a t e ( ) ;  
 }  
 c l a s s   _ M y H o m e P a g e S t a t e   e x t e n d s   S t a t e < H o m e W i d g e t >   {  
     L i s t < M a i n A x i s A l i g n m e n t >   _ a l i g n m e n t s   =   [  
     M a i n A x i s A l i g n m e n t . s t a r t ,  
     M a i n A x i s A l i g n m e n t . e n d ,  
     M a i n A x i s A l i g n m e n t . c e n t e r ,  
     M a i n A x i s A l i g n m e n t . s p a c e B e t w e e n ,  
     M a i n A x i s A l i g n m e n t . s p a c e E v e n l y ,  
         M a i n A x i s A l i g n m e n t . s p a c e A r o u n d  
     ] ;  
     L i s t < S t r i n g >   _ a l i g n m e n t s T e x t   =   [  
         " S t a r t " ,  
         " E n d " ,  
         " C e n t e r " ,  
         " S o a c e   B e t w e e n " ,  
         " S p a c e   E v e n l y " ,  
         " S p a c e   A r o u n d "  
     ] ;  
     b o o l   _ v e r t i c a l   =   t r u e ;  
     i n t   _ a l i g n m e n t I n d e x   =   0 ;  
     R a w M a t e r i a l B u t t o n   r e d B u t t o n   =   R a w M a t e r i a l B u t t o n (  
             o n P r e s s e d :   ( )   { } ,   e l e v a t i o n :   2 . 0 ,   f i l l C o l o r :   C o l o r s . r e d ) ;  
     R a w M a t e r i a l B u t t o n   g r e e n B u t t o n   =   n e w   R a w M a t e r i a l B u t t o n (  
         o n P r e s s e d :   ( )   { } ,  
         e l e v a t i o n :   2 . 0 ,  
         f i l l C o l o r :   C o l o r s . g r e e n ,  
     ) ;  
     R a w M a t e r i a l B u t t o n   b l u e B u t t o n   =   n e w   R a w M a t e r i a l B u t t o n (  
         o n P r e s s e d :   ( )   { } ,  
         e l e v a t i o n :   2 . 0 ,  
         f i l l C o l o r :   C o l o r s . b l u e ,  
     ) ;  
     @ o v e r r i d e  
     W i d g e t   b u i l d ( B u i l d C o n t e x t   c o n t e x t )   {  
         r e t u r n   n e w   S c a f f o l d (  
             a p p B a r :   n e w   A p p B a r (  
                     t i t l e :   n e w   T e x t ( w i d g e t . t i t l e ) ,  
                     a c t i o n s :   < W i d g e t > [  
             I c o n B u t t o n (  
             i c o n :   c o n s t   I c o n ( I c o n s . r o t a t e _ r i g h t ) ,  
             t o o l t i p :   ' D i r e c t i o n ' ,  
             o n P r e s s e d :   ( )   {  
                 s e t S t a t e ( ( )   {  
                     _ v e r t i c a l   =   ! _ v e r t i c a l ;  
                 } ) ;  
             } ,  
         ) ,  
         P a d d i n g (  
         p a d d i n g :   E d g e I n s e t s . o n l y ( t o p :   2 0 . 0 ) ,  
         c h i l d :   T e x t ( _ v e r t i c a l   ?   " V e r t i c a l "   :   " H o r i z o n t a l " ) ) ,  
         I c o n B u t t o n (  
         i c o n :   c o n s t   I c o n ( I c o n s . a s p e c t _ r a t i o ) ,  
         t o o l t i p :   ' M a i n   a x i s ' ,  
         o n P r e s s e d :   ( )   {  
         s e t S t a t e ( ( )   {  
         _ a l i g n m e n t I n d e x + + ;  
         i f   ( _ a l i g n m e n t I n d e x   > =   _ a l i g n m e n t s . l e n g t h )   {  
         _ a l i g n m e n t I n d e x   =   0 ;  
         }  
         } ) ;  
         } ,  
         ) ,  
         P a d d i n g (  
                 p a d d i n g :   E d g e I n s e t s . o n l y ( t o p :   2 0 . 0 ) ,  
                 c h i l d :   T e x t ( _ a l i g n m e n t s T e x t [ _ a l i g n m e n t I n d e x ] ) ) ,  
                         P a d d i n g (  
                             p a d d i n g :   E d g e I n s e t s . a l l ( 1 0 . 0 ) ,  
                         )  
                     ] ,  
             ) ,  
                 b o d y :   n e w   F l e x (  
                     d i r e c t i o n :   _ v e r t i c a l   ?   A x i s . v e r t i c a l   :   A x i s . h o r i z o n t a l ,  
                     m a i n A x i s A l i g n m e n t :   _ a l i g n m e n t s [ _ a l i g n m e n t I n d e x ] ,  
                     c h i l d r e n :   < W i d g e t > [ r e d B u t t o n ,   g r e e n B u t t o n ,   b l u e B u t t o n ] ,  
                 ) ) ;  
     }  
 } 