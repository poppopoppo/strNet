Definition place : Type := nat * nat. 
Definition set : Type := nat -> Prop.
Definition token : Type := place -> Prop. 
Definition trs : Type := set * set * bool. 
Definition net : Type := list trs. 
Definition fire : token -> trs -> token. 
  unfold token , trs , place. intros tkn trs pos.
  
   
   
    
   
 
