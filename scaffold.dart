i m p o r t   ' p a c k a g e : f l u t t e r / m a t e r i a l . d a r t ' ;  
  
 v o i d   m a i n ( )   = >   r u n A p p ( M y A p p ( ) ) ;  
  
 c l a s s   M y A p p   e x t e n d s   S t a t e l e s s W i d g e t   {  
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
 c l a s s   M y H o m e P a g e   e x t e n d s   S t a t e l e s s W i d g e t   {  
     M y H o m e P a g e ( { K e y   k e y } )   :   s u p e r ( k e y :   k e y ) ;  
     @ o v e r r i d e  
     W i d g e t   b u i l d ( B u i l d C o n t e x t   c o n t e x t )   {  
         r e t u r n   n e w   S c a f f o l d (  
                 a p p B a r :   n e w   A p p B a r (  
                 b a c k g r o u n d C o l o r :   C o l o r s . a m b e r ,  
                 t i t l e :   n e w   T e x t ( " A p p B a r " ) ,  
         a c t i o n s :   < W i d g e t > [  
         I c o n B u t t o n (  
                 i c o n :   I c o n ( I c o n s . a d d ) ,  
                 o n P r e s s e d :   ( )   {  
                     p r i n t ( " A d d   I c o n B u t t o n   P r e s s e d . . . " ) ;  
                 } )  
         ] ,  
                 ) ,  
             b a c k g r o u n d C o l o r :   C o l o r s . l i g h t B l u e A c c e n t ,  
             b o d y :   n e w   C e n t e r (  
                 c h i l d :   n e w   C o l u m n (  
                     m a i n A x i s A l i g n m e n t :   M a i n A x i s A l i g n m e n t . c e n t e r ,  
                     c h i l d r e n :   < W i d g e t > [  
                         n e w   T e x t (  
                         ' B o d y ' ,  
                         )  
                     ] ,  
                 ) ,  
             ) ,  
             b o t t o m N a v i g a t i o n B a r :   B o t t o m N a v i g a t i o n B a r (  
                     t y p e :   B o t t o m N a v i g a t i o n B a r T y p e . f i x e d ,  
                     o n T a p :   ( i n d e x )   = >   d e b u g P r i n t ( " B o t t o m   N a v i g a t i o n   B a r   o n T a p :   $ { i n d e x } " ) ,  
                     i t e m s :   [  
             B o t t o m N a v i g a t i o n B a r I t e m (  
             i c o n :   n e w   I c o n ( I c o n s . h o m e ) ,  
             t i t l e :   n e w   T e x t ( ' B o t t o m   N a v   B a r   I t e m   1 ' ) ,  
         ) ,  
         B o t t o m N a v i g a t i o n B a r I t e m (  
         i c o n :   n e w   I c o n ( I c o n s . m a i l ) ,  
         t i t l e :   n e w   T e x t ( ' B o t t o m   N a v   B a r   I t e m   2 ' ) ,  
         )  
                     ] ,  
             ) ,  
                 b o t t o m S h e e t :   C o n t a i n e r (  
                         c o l o r :   C o l o r s . a m b e r A c c e n t ,  
                         p a d d i n g :   E d g e I n s e t s . a l l ( 2 0 . 0 ) ,  
                         c h i l d :   R o w ( c h i l d r e n :   < W i d g e t > [  
                             I c o n B u t t o n (  
                                     i c o n :   I c o n ( I c o n s . u p d a t e ) ,  
                                     o n P r e s s e d :   ( )   {  
                                         p r i n t ( " B o t t o m   S h e e t   I c o n   P r e s s e d " ) ;  
                                     } ) ,  
                             T e x t ( ' B o t t o m   S h e e t   T e x t ' )  
                         ] ) ) ,  
                 d r a w e r :   D r a w e r (  
                         c h i l d :   L i s t V i e w ( c h i l d r e n :   < W i d g e t > [  
                         R o w ( c h i l d r e n :   < W i d g e t > [  
                         I c o n B u t t o n (  
                         i c o n :   I c o n ( I c o n s . a d d ) ,  
                         o n P r e s s e d :   ( )   {  
                             p r i n t ( " D r a w e r   I t e m   1   P r e s s e d " ) ;  
                         } ) ,  
                 T e x t ( ' D r a w e r   I t e m   1 ' )  
                 ] ) ,  
         R o w ( c h i l d r e n :   < W i d g e t > [  
         I c o n B u t t o n (  
         i c o n :   I c o n ( I c o n s . a d d ) ,  
         o n P r e s s e d :   ( )   {  
         p r i n t ( " D r a w e r   I t e m   2   P r e s s e d " ) ;  
         } ) ,  
         T e x t ( ' D r a w e r   I t e m   2 ' )  
         ] )  
         ] ) ) ,  
 / *  
 F o r   s w i p i n g   i n   f r o m   r i g h t - s i d e .  
 e n d D r a w e r :   D r a w e r (  
 c h i l d :   L i s t V i e w ( c h i l d r e n :   < W i d g e t > [  
 R o w ( c h i l d r e n :   < W i d g e t > [  
 I c o n B u t t o n (  
 i c o n :   I c o n ( I c o n s . a d d ) ,  
 o n P r e s s e d :   ( )   {  
 p r i n t (  D r a w e r   I t e m   1 " ) ;  
 } ) ,  
 T e x t (  D r a w e r   I t e m   1   P r e s s e d  )  
 ] ) ,  
 R o w ( c h i l d r e n :   < W i d g e t > [  
 I c o n B u t t o n (  
 i c o n :   I c o n ( I c o n s . a d d ) ,  
 o n P r e s s e d :   ( )   {  
 p r i n t (  D r a w e r   I t e m   2   P r e s s e d  ) ;  
 } ) ,  
 T e x t (  D r a w e r   I t e m   2  )  
 ] )  
 ] ) ) ,  
 * /  
                 f l o a t i n g A c t i o n B u t t o n :   n e w   F l o a t i n g A c t i o n B u t t o n (  
                         o n P r e s s e d :   ( )   {  
                             p r i n t ( " F l o a t i n g A c t i o n B u t t o n   P r e s s e d " ) ;  
                         } ,  
                         t o o l t i p :   ' I n c r e m e n t ' ,  
                         c h i l d :   n e w   I c o n ( I c o n s . a d d ) ) ,  
                 p e r s i s t e n t F o o t e r B u t t o n s :   < W i d g e t > [  
                     I c o n B u t t o n (  
                             i c o n :   I c o n ( I c o n s . u p d a t e ) ,  
                             o n P r e s s e d :   ( )   {  
                                 p r i n t ( " P e r s i s t a n t   F o o t e r   I c o n   P r e s s e d " ) ;  
                             } ) ,  
                     T e x t ( ' P e r s i s t a n t   F o o t e r   T e x t ' )  
                 ] ) ;  
     }  
 } 