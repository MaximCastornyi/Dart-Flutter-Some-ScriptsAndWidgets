i m p o r t   ' p a c k a g e : f l u t t e r / m a t e r i a l . d a r t ' ;  
  
 v o i d   m a i n ( )   = >   r u n A p p ( M y A p p ( ) ) ;  
  
 c l a s s   M y A p p   e x t e n d s   S t a t e l e s s W i d g e t   {  
     / /   T h i s   w i d g e t   i s   t h e   r o o t   o f   y o u r   a p p l i c a t i o n .  
     @ o v e r r i d e  
     W i d g e t   b u i l d ( B u i l d C o n t e x t   c o n t e x t )   {  
         r e t u r n   n e w   M a t e r i a l A p p (  
             t i t l e :   ' F l u t t e r   D e m o ' ,  
             t h e m e :   n e w   T h e m e D a t a (  
                 p r i m a r y S w a t c h :   C o l o r s . b l u e ,  
                 i n p u t D e c o r a t i o n T h e m e :   I n p u t D e c o r a t i o n T h e m e (  
                     b o r d e r :   c o n s t   O u t l i n e I n p u t B o r d e r (  
                         b o r d e r S i d e :   B o r d e r S i d e ( c o l o r :   C o l o r s . b l u e G r e y ) ,  
                     ) ,  
                     e n a b l e d B o r d e r :   O u t l i n e I n p u t B o r d e r (  
                         b o r d e r S i d e :   B o r d e r S i d e ( c o l o r :   C o l o r s . g r e e n ) ,  
                     ) ,  
                     f o c u s e d B o r d e r :   c o n s t   O u t l i n e I n p u t B o r d e r (  
                         b o r d e r S i d e :   B o r d e r S i d e ( c o l o r :   C o l o r s . d e e p P u r p l e ) ,  
                     ) ,  
                     l a b e l S t y l e :   c o n s t   T e x t S t y l e (  
                         c o l o r :   C o l o r s . b l u e G r e y ,  
                     ) ,  
                 ) ,  
             ) ,  
             h o m e :   n e w   H o m e W i d g e t ( ) ,  
         ) ;  
     }  
 }  
 c l a s s   H o m e W i d g e t   e x t e n d s   S t a t e l e s s W i d g e t   {  
     f i n a l   _ f o r m K e y   =   G l o b a l K e y < F o r m S t a t e > ( ) ;  
     L i s t < T e x t E d i t i n g C o n t r o l l e r >   _ t e x t E d i t i n g C o n t r o l l e r s   =   [ ] ;  
     L i s t < W i d g e t >   _ w i d g e t s   =   [ ] ;  
     H o m e W i d g e t ( { K e y   k e y } )   :   s u p e r ( k e y :   k e y )   {  
         L i s t < S t r i n g >   f i e l d N a m e s   =   [  
             " F i r s t   N a m e " ,  
             " L a s t   N a m e " ,  
             " A d d r e s s   1 " ,  
             " A d d r e s s   2 " ,  
             " C i t y " ,  
             " S t a t e " ,  
             " Z i p "  
         ] ;  
         f o r   ( i n t   i   =   0 ,   i i   =   f i e l d N a m e s . l e n g t h ;   i   <   i i ;   i + + )   {  
             S t r i n g   f i e l d N a m e   =   f i e l d N a m e s [ i ] ;  
             T e x t E d i t i n g C o n t r o l l e r   t e x t E d i t i n g C o n t r o l l e r   =  
             n e w   T e x t E d i t i n g C o n t r o l l e r ( t e x t :   " " ) ;  
             _ t e x t E d i t i n g C o n t r o l l e r s . a d d ( t e x t E d i t i n g C o n t r o l l e r ) ;  
             _ w i d g e t s . a d d ( P a d d i n g (  
                 c h i l d :   _ c r e a t e T e x t F o r m F i e l d ( f i e l d N a m e ,   i   >   1 ,  
                         t e x t E d i t i n g C o n t r o l l e r ) ,  
                 p a d d i n g :   E d g e I n s e t s . a l l ( 1 0 . 0 ) ,  
             ) ) ;  
         }  
         _ w i d g e t s . a d d ( R a i s e d B u t t o n (  
                 o n P r e s s e d :   ( )   {  
             _ f o r m K e y . c u r r e n t S t a t e . v a l i d a t e ( ) ;  
         } ,  
             c h i l d :   n e w   T e x t ( ' S a v e ' ) ,  
         ) ) ;  
     }  
     T e x t F o r m F i e l d   _ c r e a t e T e x t F o r m F i e l d (  
             S t r i n g   f i e l d N a m e ,   b o o l   e n a b l e d ,   T e x t E d i t i n g C o n t r o l l e r  
             c o n t r o l l e r )   {  
         r e t u r n   n e w   T e x t F o r m F i e l d (  
                 e n a b l e d :   e n a b l e d ,  
                 v a l i d a t o r :   ( v a l u e )   {  
                     i f   ( v a l u e . i s E m p t y )   {  
                         r e t u r n   ' P l e a s e   e n t e r   $ { f i e l d N a m e } . ' ;  
                     }  
                 } ,  
                 d e c o r a t i o n :   I n p u t D e c o r a t i o n (  
                         i c o n :   c o n s t   I c o n ( I c o n s . p e r s o n ) ,  
                         h i n t T e x t :   f i e l d N a m e ,  
                         l a b e l T e x t :   ' E n t e r   $ { f i e l d N a m e } ' ) ,  
                 c o n t r o l l e r :   c o n t r o l l e r ) ;  
     }  
     @ o v e r r i d e  
     W i d g e t   b u i l d ( B u i l d C o n t e x t   c o n t e x t )   {  
         r e t u r n   n e w   S c a f f o l d (  
                 a p p B a r :   n e w   A p p B a r (  
                     t i t l e :   n e w   T e x t ( " I n p u t   D e c o r a t i o n   T h e m e s " ) ,  
                 ) ,  
                 b o d y :   P a d d i n g (  
                 p a d d i n g :   E d g e I n s e t s . a l l ( 2 0 . 0 ) ,  
                         c h i l d :   F o r m (  
                                 k e y :   _ f o r m K e y ,  
                                 c h i l d :   L i s t V i e w (  
                                     c h i l d r e n :   _ w i d g e t s ,  
                                 ) ) ) ) ;  
     }  
 } 