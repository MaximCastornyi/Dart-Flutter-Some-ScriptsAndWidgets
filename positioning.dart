i m p o r t   ' p a c k a g e : f l u t t e r / m a t e r i a l . d a r t ' ;  
 i m p o r t   ' d a r t : m a t h ' ;  
  
 v o i d   m a i n ( )   = >   r u n A p p ( M y A p p ( ) ) ;  
  
 c l a s s   M y A p p   e x t e n d s   S t a t e l e s s W i d g e t   {  
  
     / /   T h i s   w i d g e t   i s   t h e   r o o t   o f   y o u r   a p p l i c a t i o n .  
     @ o v e r r i d e  
     W i d g e t   b u i l d ( B u i l d C o n t e x t   c o n t e x t )   {  
         r e t u r n   n e w   M a t e r i a l A p p (  
             t i t l e :   ' F l u t t e r   D e m o ' ,  
             t h e m e :   n e w   T h e m e D a t a (  
                 p r i m a r y S w a t c h :   C o l o r s . b l u e ,  
             ) ,  
             h o m e :   n e w   M y H o m e P a g e ( ) ,  
         ) ;  
     }  
 }  
 c l a s s   C i r c l e P a i n t e r   e x t e n d s   C u s t o m P a i n t e r   {  
     f i n a l   _ r a n d o m   =   n e w   R a n d o m ( ) ;  
     L i s t < C o l o r >   _ c o l o r s   =   [ ] ;  
     C i r c l e P a i n t e r ( )   {  
         f o r   ( i n t   i   =   0 ;   i   <   1 0 0 ;   i + + )   {  
             _ c o l o r s . a d d ( C o l o r s . g r e e n  
                     . w i t h R e d ( n e x t ( 0 ,   2 5 5 ) )  
                     . w i t h G r e e n ( n e x t ( 0 ,   2 5 5 ) )  
                     . w i t h B l u e ( n e x t ( 0 ,   2 5 5 ) ) ) ;  
         }  
     }  
     i n t   n e x t ( i n t   m i n ,   i n t   m a x )   = >   m i n   +   _ r a n d o m . n e x t I n t ( m a x   -   m i n ) ;  
     @ o v e r r i d e  
     v o i d   p a i n t ( C a n v a s   c a n v a s ,   S i z e   s i z e )   {  
         f o r   ( i n t   i   =   0 ;   i   <   1 0 0 ;   i + + )   {  
             v a r   r a d i u s   =   ( i   *   1 0 ) . t o D o u b l e ( ) ;  
             c a n v a s . d r a w C i r c l e (  
                     n e w   O f f s e t ( 1 0 0 0 . 0 ,   1 0 0 0 . 0 ) ,  
                     r a d i u s ,  
                     n e w   P a i n t ( )  
                         . . c o l o r   =   _ c o l o r s [ i ]  
                         . . s t r o k e C a p   =   S t r o k e C a p . r o u n d  
                         . . s t y l e   =   P a i n t i n g S t y l e . s t r o k e  
                         . . s t r o k e W i d t h   =   1 5 . 0 ) ;  
         }  
     }  
     @ o v e r r i d e  
     b o o l   s h o u l d R e p a i n t ( C i r c l e P a i n t e r   o l d D e l e g a t e )   {  
         r e t u r n   f a l s e ;  
     }  
 }  
 c l a s s   M y H o m e P a g e   e x t e n d s   S t a t e l e s s W i d g e t   {  
     C i r c l e P a i n t e r   c i r c l e P a i n t e r   =   n e w   C i r c l e P a i n t e r ( ) ;  
     M y H o m e P a g e ( { K e y   k e y } )   :   s u p e r ( k e y :   k e y ) ;  
     @ o v e r r i d e  
     W i d g e t   b u i l d ( B u i l d C o n t e x t   c o n t e x t )   {  
         r e t u r n   n e w   S c a f f o l d (  
                 a p p B a r :   n e w   A p p B a r (  
                     t i t l e :   n e w   T e x t ( " S c r o l l " ) ,  
                 ) ,  
                 b o d y :   n e w   S i n g l e C h i l d S c r o l l V i e w (  
                         s c r o l l D i r e c t i o n :   A x i s . v e r t i c a l ,  
                         p h y s i c s :   A l w a y s S c r o l l a b l e S c r o l l P h y s i c s ( ) ,  
                         c h i l d :   C u s t o m P a i n t (  
                             s i z e :   S i z e ( 2 0 0 0 . 0 ,   2 0 0 0 . 0 ) ,  
                             f o r e g r o u n d P a i n t e r :   c i r c l e P a i n t e r ,  
                         ) ) ) ;  
     }  
 } 