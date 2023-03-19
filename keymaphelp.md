
                                     Movement keys 

                                         k: 
                                     :h    l:
                                         j: 
-------------------------------------------------------------------------------------
          Panes                                               Tabs 
-------------------------------------------------------------------------------------
    <C-w>{movementkeys}                              <n>gt   -> moves to nth tab 
       :eg `<C-w>j moves to pane below `             :tabn   -> moves to next tab 
   <C-w>r swap/roate panes                           :tabr   -> moves to first tab
   <C-w>w move to next pane                          :tabl   -> moves to last tab
-------------------------------------------------------------------------------------
          Words                                                Lines 
-------------------------------------------------------------------------------------
   b/w        ->   start of previous/next word       0       ->  start of line
   ge/e       ->   start of previous/next word       ^       ->  starting word
   {n}w       ->   start of nth word                 {n}G    ->  nth line
   {n}{j/k}   ->   move n lines down/up              gg/G    ->  start/end of file
-------------------------------------------------------------------------------------
          Exiting                                              Clipboard 
-------------------------------------------------------------------------------------
   :q        ->   close file                        x       ->  delete character
   :qa       ->   close all files                   dd      ->  delete line (cut)
   :zz       ->   save and quit                     yy      ->  yank (copy)
   :w        ->   save                              p       ->  paste
   :wq       ->   save and close                    "+p/"+y ->  use sys buffer(+)
-------------------------------------------------------------------------------------
                                    Editing 
-------------------------------------------------------------------------------------
   a   -> append            o  -> next line             i     ->  insert
   A   -> append to end     O  -> previous line         I     ->  insert at start 
   r   -> replace 1 char    .  -> Repeat last action    u     ->  undo
   R   -> replace mode      qq -> Record macro          <C-r> ->  redo   
   =   -> indenting         %  -> jump to matching }    {n}@q ->  run macro n time

-------------------------------------------------------------------------------------
                                    User specific  
-------------------------------------------------------------------------------------
   <Space>tt   -> open term in new tab      <Space>tv   -> open term in vsplit
   <Esc>       -> terminal normal mode      <Space>th   -> open term in split
   <Space>ll   -> Open file explorer        <Space>ff   -> fuzzy file finder 
   <Space>a    -> set harpoon bookmark      <Space>fg   -> fuzzy grep in folder
   <Space>{n}  -> jump to nth harpoon       <Space>e    -> see all harpoon marks
   <C-{/}>   -> resize horzontal panes    <C-{/}>   -> resize vertical  panes 
   <Space>nv   -> new file in vertical      <Space>nh   -> newfile in horizontal  
   <Space>r    -> Display this cheatsheet   q/<Esc>     -> close this cheatsheet  
