i m p o r t   ' p a c k a g e : f l u t t e r / m a t e r i a l . d a r t ' ;  
  
 v o i d   m a i n ( )   = >   r u n A p p ( M y A p p ( ) ) ;  
  
 c l a s s   E x p a n s i o n P a n e l D a t a   {  
     S t r i n g   _ t i t l e ;  
     S t r i n g   _ b o d y ;  
     b o o l   _ e x p a n d e d ;  
     E x p a n s i o n P a n e l D a t a ( t h i s . _ t i t l e ,   t h i s . _ b o d y ,   t h i s . _ e x p a n d e d ) ;  
     S t r i n g   g e t   t i t l e   = >   _ t i t l e ;  
     @ o v e r r i d e  
     S t r i n g   t o S t r i n g ( )   {  
         r e t u r n   ' E x p a n s i o n P a n e l D a t a { _ t i t l e :   $ _ t i t l e ,   _ b o d y :   $ _ b o d y ,   _ e x p a n d e d :   $ _ e x p a n d e d } ' ;  
 }  
 S t r i n g   g e t   b o d y   = >   _ b o d y ;  
 b o o l   g e t   e x p a n d e d   = >   _ e x p a n d e d ;  
 s e t   e x p a n d e d ( b o o l   v a l u e )   {  
     _ e x p a n d e d   =   v a l u e ;  
 }  
 }  
 c l a s s   M y A p p   e x t e n d s   S t a t e l e s s W i d g e t   {  
 / /   T h i s   w i d g e t   i s   t h e   r o o t   o f   y o u r   a p p l i c a t i o n .  
     @ o v e r r i d e  
     W i d g e t   b u i l d ( B u i l d C o n t e x t   c o n t e x t )   {  
         r e t u r n   n e w   M a t e r i a l A p p (  
                 t i t l e :   ' F l u t t e r   D e m o ' ,  
                 t h e m e :   n e w   T h e m e D a t a (  
                     p r i m a r y S w a t c h :   C o l o r s . g r e e n ,  
                 ) ,  
                 h o m e :   n e w   H o m e W i d g e t ( ) ,  
                 s h o w P e r f o r m a n c e O v e r l a y :   t r u e ) ;  
     }  
 }  
 c l a s s   H o m e W i d g e t   e x t e n d s   S t a t e f u l W i d g e t   {  
     @ o v e r r i d e  
     _ H o m e W i d g e t S t a t e   c r e a t e S t a t e ( )   = >   n e w   _ H o m e W i d g e t S t a t e ( [  
     E x p a n s i o n P a n e l D a t a (  
     " C a n   I   b a c k u p   m y   d a t a ? " ,  
     " d s f u y s d i u   f u d s y   f i u s d y f   "  
     " u s d y f   i u d s y f   u d s y f i u y s d   u f y u i s d y f i   s d u i y f i u s d y f   d s y u i   u " ,  
     f a l s e ) ,  
     E x p a n s i o n P a n e l D a t a (  
     " H o w   c a n   I   i n c r e a s e   m y   s p a c e ? " ,  
     " s y d u f y   "  
     " d s u i y f u i d y s u   f u s y u f s d y u i f   y s u d i y   f u y d s u f y   s u y f   u d s y   f u " ,  
     f a l s e ) ,  
     E x p a n s i o n P a n e l D a t a (  
     " H o w   d o   I   c a n c e l ? " ,   " d d s u f y s d   y f d s   f s d u y f   s d y f   s u d y u y   f s u d y f   s y d y f   d s y   f d s u y f   u d s u f y   u d s y f d s f y u y s d f   u y u d " ,  
     f a l s e ) ,  
     E x p a n s i o n P a n e l D a t a (  
             " H o w   d o   I   c h a n g e   l a n g u a g e ? " ,   " u d s u f   s d i f u u   f d s u i f   u f   d s u f d i s u   f i u s   w e w q w   q e q w e q w y i q u u i q w e q w e w q e   w e e w e   w e w e " ,  
             f a l s e ) ,  
         E x p a n s i o n P a n e l D a t a (  
                 " H o w   d o   I   s e a r c h ? " ,  
                 " o o i o i o   i o i   o i o   i   o d s f u d s i f s d f "  
                         "   d f d s f d s u i   i d u f u   d s i u f   i s d u f   i d u f   i d s u   f i s d u f   i u s i d f   " ,  
                 f a l s e ) ,  
         E x p a n s i o n P a n e l D a t a (  
                 " H o w   d o   I   v i e w   o n   o t h e r   d e v i c e s ? " ,   " i d u s d f   i s u   i d s u   i d s u   f i s d u f   u s y f u e d y   e w u y d u y e d   u y e u   d y e u d y   u w e y u " ,  
                 f a l s e ) ,  
         E x p a n s i o n P a n e l D a t a (  
                 " H o w   d o   I   v i e w   m y   h i s t o r y " ,  
                 " i i r e w y   s y f u d y   f u   "  
                         " y f s d u y f d s   y f d s u y f   u d s f y d s u f y   s d u y f   d s u y f   u d s y f   u d s y u e e " ,  
                 f a l s e ) ,  
         E x p a n s i o n P a n e l D a t a (  
                 " I s   m y   s u b s c r i p t i o n   c o s t   g o i n g   t o   g o   u p ? " ,   " w i e u r e i y   d y s   u d s y y f   d s u f y   d u s y f u d s y   f u y s d u   u d s y u y f u d s y f u e w y r w r e o o i o o u   u i y " ,  
                 f a l s e ) ,  
     ] ) ;  
 }  
 c l a s s   _ H o m e W i d g e t S t a t e   e x t e n d s   S t a t e < H o m e W i d g e t >   {  
 / /   T r a c k   e x p a n s i o n   p a n e l s ,   i n c l u d i n g   e x p a n d e d   t r u e / f a l s e ;  
     L i s t < E x p a n s i o n P a n e l D a t a >   _ e x p a n s i o n P a n e l D a t a ;  
     _ H o m e W i d g e t S t a t e ( t h i s . _ e x p a n s i o n P a n e l D a t a ) ;  
     _ o n E x p a n s i o n ( i n t   p a n e l I n d e x ,   b o o l   i s E x p a n d e d )   {  
 / /   T o g g l e   t h e   e x p a n d e d   s t a t e .   U s i n g   s e t S t a t e   w i l l   f o r c e   ' b u i l d '   t o   f i r e .  
         s e t S t a t e ( ( )   {  
             _ e x p a n s i o n P a n e l D a t a [ p a n e l I n d e x ] . e x p a n d e d   =  
             ! ( _ e x p a n s i o n P a n e l D a t a [ p a n e l I n d e x ] . e x p a n d e d ) ;  
         } ) ;  
     }  
     @ o v e r r i d e  
     W i d g e t   b u i l d ( B u i l d C o n t e x t   c o n t e x t )   {  
 / /   B u i l d   t h e   e x p a n s i o n   p a n e l s   f r o m   s c r a t c h   e v e r y   t i m e   t h e   u i   b u i l d s .  
 / /   T h i s   i s   n o t   a s   e x p e n s i v e   a s   i t   s o u n d s .  
         L i s t < E x p a n s i o n P a n e l >   e x p a n s i o n P a n e l s   =   [ ] ;  
         f o r   ( i n t   i   =   0 ,   i i   =   _ e x p a n s i o n P a n e l D a t a . l e n g t h ;   i   <   i i ;   i + + )   {  
             v a r   e x p a n s i o n P a n e l D a t a   =   _ e x p a n s i o n P a n e l D a t a [ i ] ;  
             e x p a n s i o n P a n e l s . a d d ( E x p a n s i o n P a n e l (  
                     h e a d e r B u i l d e r :   ( B u i l d C o n t e x t   c o n t e x t ,   b o o l   i s E x p a n d e d )   {  
                 r e t u r n   P a d d i n g (  
                         p a d d i n g :   E d g e I n s e t s . a l l ( 2 0 . 0 ) ,  
         c h i l d :   T e x t ( e x p a n s i o n P a n e l D a t a . t i t l e ,  
         s t y l e :   T e x t S t y l e (  
                 f o n t S i z e :   2 0 . 0 ,   f o n t W e i g h t :   F o n t W e i g h t . b o l d ) ) ) ;  
                     } ,  
                     b o d y :   P a d d i n g (  
                             p a d d i n g :   E d g e I n s e t s . a l l ( 2 0 . 0 ) ,  
                             c h i l d :   T e x t ( e x p a n s i o n P a n e l D a t a . b o d y ,  
                                     s t y l e :  
                                     T e x t S t y l e ( f o n t S i z e :   1 6 . 0 ,   f o n t S t y l e :  
                                     F o n t S t y l e . i t a l i c ) ) ) ,  
                     i s E x p a n d e d :   e x p a n s i o n P a n e l D a t a . e x p a n d e d ) ) ;  
         }  
         r e t u r n   n e w   S c a f f o l d (  
                 a p p B a r :   n e w   A p p B a r (  
                     t i t l e :   n e w   T e x t ( " F A Q s " ) ,  
                 ) ,  
                 b o d y :   S i n g l e C h i l d S c r o l l V i e w (  
                         c h i l d :   C o n t a i n e r (  
                             m a r g i n :   c o n s t   E d g e I n s e t s . a l l ( 2 4 . 0 ) ,  
                             c h i l d :   n e w   E x p a n s i o n P a n e l L i s t (  
                                     c h i l d r e n :   e x p a n s i o n P a n e l s ,   e x p a n s i o n C a l l b a c k :  
                             _ o n E x p a n s i o n ) ,  
                         ) ) ) ;  
     }  
 }  
 