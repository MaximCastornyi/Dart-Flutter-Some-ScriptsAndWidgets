i m p o r t   ' p a c k a g e : f l u t t e r / m a t e r i a l . d a r t ' ;  
  
 v o i d   m a i n ( )   = >   r u n A p p ( M y A p p ( ) ) ;  
  
 c l a s s   M y A p p   e x t e n d s   S t a t e l e s s W i d g e t   {  
  
     @ o v e r r i d e  
     W i d g e t   b u i l d ( B u i l d C o n t e x t   c o n t e x t )   {  
         r e t u r n   n e w   M a t e r i a l A p p (  
             t i t l e :   ' F l u t t e r   D e m o ' ,  
             t h e m e :   n e w   T h e m e D a t a (  
                 p r i m a r y S w a t c h :   C o l o r s . b l u e ,  
             ) ,  
             h o m e :   n e w   H o m e W i d g e t ( t i t l e :   ' C a r d   L a y o u t   D e m o ' ) ,  
         ) ;  
     }  
 }  
 c l a s s   H o m e W i d g e t   e x t e n d s   S t a t e f u l W i d g e t   {  
     H o m e W i d g e t ( { K e y   k e y ,   t h i s . t i t l e } )   :   s u p e r ( k e y :   k e y ) ;  
     f i n a l   S t r i n g   t i t l e ;  
     f i n a l   P l e a s e W a i t W i d g e t   _ p l e a s e W a i t W i d g e t   =  
     P l e a s e W a i t W i d g e t ( k e y :   O b j e c t K e y ( " p l e a s e W a i t W i d g e t " ) ) ;  
     f i n a l   A p p W i d g e t   _ a p p W i d g e t   =   A p p W i d g e t ( k e y :  
     O b j e c t K e y ( " a p p W i d g e t " ) ) ;  
     @ o v e r r i d e  
     _ H o m e W i d g e t S t a t e   c r e a t e S t a t e ( )   = >   n e w   _ H o m e W i d g e t S t a t e ( ) ;  
 }  
 c l a s s   _ H o m e W i d g e t S t a t e   e x t e n d s   S t a t e < H o m e W i d g e t >   {  
     b o o l   _ p l e a s e W a i t   =   f a l s e ;  
     v o i d   _ t o g g l e P l e a s e W a i t ( )   {  
         s e t S t a t e ( ( )   {  
             _ p l e a s e W a i t   =   ! _ p l e a s e W a i t ;  
         } ) ;  
     }  
     @ o v e r r i d e  
     W i d g e t   b u i l d ( B u i l d C o n t e x t   c o n t e x t )   {  
         L i s t < W i d g e t >   c h i l d W i d g e t s   =   _ p l e a s e W a i t  
                 ?   [ w i d g e t . _ p l e a s e W a i t W i d g e t ,   w i d g e t . _ a p p W i d g e t ]  
                 :   [ w i d g e t . _ a p p W i d g e t ] ;  
         r e t u r n   n e w   S c a f f o l d (  
                 a p p B a r :   n e w   A p p B a r (  
                     t i t l e :   n e w   T e x t ( w i d g e t . t i t l e ) ,  
                 ) ,  
                 b o d y :   n e w   C e n t e r (  
                         c h i l d :   S t a c k ( k e y :   O b j e c t K e y ( " s t a c k " ) ,   c h i l d r e n :  
                         c h i l d W i d g e t s ) ) ,  
                 f l o a t i n g A c t i o n B u t t o n :   n e w   F l o a t i n g A c t i o n B u t t o n . e x t e n d e d (  
                         o n P r e s s e d :   _ t o g g l e P l e a s e W a i t ,  
                         l a b e l :   T e x t ( ' P l e a s e   W a i t   O n / O f f ' ) ,  
                         i c o n :   n e w   I c o n ( I c o n s . c a c h e d ) ) ) ;  
     }  
 }  
 c l a s s   P l e a s e W a i t W i d g e t   e x t e n d s   S t a t e l e s s W i d g e t   {  
     P l e a s e W a i t W i d g e t ( {  
         K e y   k e y ,  
     } )   :   s u p e r ( k e y :   k e y ) ;  
     @ o v e r r i d e  
     W i d g e t   b u i l d ( B u i l d C o n t e x t   c o n t e x t )   {  
         r e t u r n   C o n t a i n e r (  
                 c h i l d :   C e n t e r (  
                     c h i l d :   C i r c u l a r P r o g r e s s I n d i c a t o r ( s t r o k e W i d t h :   8 . 0 ) ,  
                 ) ,  
                 c o l o r :   C o l o r s . g r e y . w i t h O p a c i t y ( 0 . 3 ) ) ;  
     }  
 }  
 c l a s s   A p p W i d g e t   e x t e n d s   S t a t e l e s s W i d g e t   {  
     A p p W i d g e t ( {  
         K e y   k e y ,  
     } )   :   s u p e r ( k e y :   k e y ) ;  
     @ o v e r r i d e  
     W i d g e t   b u i l d ( B u i l d C o n t e x t   c o n t e x t )   {  
         r e t u r n   C e n t e r (  
             c h i l d :   n e w   C o l u m n (  
                 m a i n A x i s A l i g n m e n t :   M a i n A x i s A l i g n m e n t . s p a c e E v e n l y ,  
                 c h i l d r e n :   < W i d g e t > [  
                     c o n s t   T e x t ( ' Y o u r ' ,   s t y l e :   T e x t S t y l e ( f o n t S i z e :   2 0 . 0 ) ) ,  
                     c o n s t   T e x t ( ' A p p ' ,   s t y l e :   T e x t S t y l e ( f o n t S i z e :   2 0 . 0 ) ) ,  
                     c o n s t   T e x t ( ' G o e s ' ,   s t y l e :   T e x t S t y l e ( f o n t S i z e :   2 0 . 0 ) ) ,  
                     c o n s t   T e x t ( ' H e r e ' ,   s t y l e :   T e x t S t y l e ( f o n t S i z e :   2 0 . 0 ) )  
                 ] ,  
             ) ,  
         ) ;  
     }  
 } 