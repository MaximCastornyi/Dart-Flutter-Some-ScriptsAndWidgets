i m p o r t   ' p a c k a g e : f l u t t e r / m a t e r i a l . d a r t ' ;  
  
 v o i d   m a i n ( )   = >   r u n A p p ( M y A p p ( ) ) ;  
  
 c l a s s   M y A p p   e x t e n d s   S t a t e l e s s W i d g e t   {  
     @ o v e r r i d e  
     W i d g e t   b u i l d ( B u i l d C o n t e x t   c o n t e x t )   {  
         r e t u r n   n e w   M a t e r i a l A p p (  
                 t i t l e :   ' F l u t t e r   D e m o ' ,  
             t h e m e :   n e w   T h e m e D a t a (  
                 p r i m a r y S w a t c h :   C o l o r s . b l u e ,  
             ) ,  
             h o m e :   n e w   H o m e W i d g e t ( ) ,  
         ) ;  
     }  
 }  
 c l a s s   H o m e W i d g e t   e x t e n d s   S t a t e f u l W i d g e t   {  
     H o m e W i d g e t ( { K e y   k e y } )   :   s u p e r ( k e y :   k e y ) ;  
     @ o v e r r i d e  
     _ H o m e W i d g e t S t a t e   c r e a t e S t a t e ( )   = >   n e w   _ H o m e W i d g e t S t a t e ( ) ;  
 }  
 c l a s s   _ H o m e W i d g e t S t a t e   e x t e n d s   S t a t e < H o m e W i d g e t >   {  
     b o o l   _ t o p E x p a n d e d   =   f a l s e ;  
     b o o l   _ b o t t o m E x p a n d e d   =   f a l s e ;  
     t o g g l e T o p ( )   {  
         s e t S t a t e ( ( )   = >   _ t o p E x p a n d e d   =   ! _ t o p E x p a n d e d ) ;  
     }  
     t o g g l e B o t t o m ( )   {  
         s e t S t a t e ( ( )   = >   _ b o t t o m E x p a n d e d   =   ! _ b o t t o m E x p a n d e d ) ;  
     }  
     @ o v e r r i d e  
     W i d g e t   b u i l d ( B u i l d C o n t e x t   c o n t e x t )   {  
         C o n t a i n e r   t o p C o n t a i n e r   =   C o n t a i n e r (  
             c h i l d :   n e w   T e x t (  
                 ' T o p   C o n t a i n e r ' ,  
             ) ,  
             d e c o r a t i o n :   B o x D e c o r a t i o n (  
                     b o r d e r :   B o r d e r . a l l ( c o l o r :   C o l o r s . b l a c k ,   w i d t h :   1 . 0 ) ,  
                     c o l o r :   C o l o r s . b l u e ) ,  
             p a d d i n g :   E d g e I n s e t s . a l l ( 1 0 . 0 ) ,  
         ) ;  
         C o n t a i n e r   b o t t o m C o n t a i n e r   =   C o n t a i n e r (  
             c h i l d :   n e w   T e x t (  
                 ' B o t t o m   C o n t a i n e r ' ,  
             ) ,  
             d e c o r a t i o n :   B o x D e c o r a t i o n (  
                     b o r d e r :   B o r d e r . a l l ( c o l o r :   C o l o r s . b l a c k ,   w i d t h :   1 . 0 ) ,  
                     c o l o r :   C o l o r s . y e l l o w ) ,  
             p a d d i n g :   E d g e I n s e t s . a l l ( 1 0 . 0 ) ,  
         ) ;  
         W i d g e t   t o p W i d g e t   =  
         _ t o p E x p a n d e d   ?   E x p a n d e d ( c h i l d :   t o p C o n t a i n e r )   :  
         t o p C o n t a i n e r ;  
         W i d g e t   b o t t o m W i d g e t   =  
         _ b o t t o m E x p a n d e d   ?   E x p a n d e d ( c h i l d :   b o t t o m C o n t a i n e r )   :  
         b o t t o m C o n t a i n e r ;  
         r e t u r n   n e w   S c a f f o l d (  
                 a p p B a r :   n e w   A p p B a r ( t i t l e :   n e w   T e x t ( " E x p a n d e d " ) ,   a c t i o n s :  
         < W i d g e t > [  
         F l a t B u t t o n . i c o n (  
         i c o n :   I c o n ( _ t o p E x p a n d e d   ?   I c o n s . e x p a n d _ m o r e   :  
         I c o n s . e x p a n d _ l e s s ) ,  
                 l a b e l :   T e x t ( " T o p " ) ,  
                 o n P r e s s e d :   ( )   = >   t o g g l e T o p ( ) ) ,  
             F l a t B u t t o n . i c o n (  
                     i c o n :  
                     I c o n ( _ b o t t o m E x p a n d e d   ?   I c o n s . e x p a n d _ l e s s   :  
                     I c o n s . e x p a n d _ m o r e ) ,  
                     l a b e l :   T e x t ( " B o t t o m " ) ,  
                     o n P r e s s e d :   ( )   = >   t o g g l e B o t t o m ( ) )  
         ] ) ,  
                 b o d y :   n e w   C e n t e r (  
                     c h i l d :   n e w   C o l u m n (  
                         m a i n A x i s A l i g n m e n t :   M a i n A x i s A l i g n m e n t . c e n t e r ,  
                         c h i l d r e n :   < W i d g e t > [ t o p W i d g e t ,   b o t t o m W i d g e t ] ,  
                     ) ,  
                 ) ) ;  
     }  
 }  
 