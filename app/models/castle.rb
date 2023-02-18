class Castle < ApplicationRecord

   enum prefectures_area:{
       hokkaidou:1,aomoriken:2,iwateken:3
   }
   
　 enum region_area:{
　     hokkaidouchihou:1,touhokuchihou:2,kantouchihou:3
　 }

end
