import os
import numpy as np
file_reader=open("board_info.txt","r");
content=file_reader.readlines();
info=np.array(content[1].split(),dtype=str);
port=info[0];
print(port);

