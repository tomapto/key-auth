return {
      ["/api/token/:ownerid"]=
        {
          ["GET"]="tokens:read",
          ["POST"]="tokens:write"
        },
        ["/api/token/:ownerid/:tokenid"]=
        {
          ["GET"]="tokens:read",
          ["PUT,PATCH,DELETE"]="tokens:write"
        },
          
         ["/api/scope/:ownerid"]=
        {
          ["GET"]="scopes:list"
        },
        ["/styles/:ownerid"]=
        {
          ["GET"]="styles:list",
          ["POST"]="styles:write"
         },
         ["/styles/:ownerid/duplicate"]=
        {
          ["POST"]="styles:write"
         },
           ["/styles/:ownerId/:styleId"]=
        {
          ["DELETE"]="styles:write"
         },
           ["/styles/:ownerId/:styleId/share"]=
        {
          ["GET"]="styles:read"
         },
           ["/styles/:ownerId/:styleId.zip"]=
        {
          ["GET"]="styles:read"
         },  
         ["/styles/:ownerid/:styleId/:subResourceId/static"]=
        {
          ["GET"]="styles:read"
         },  
         ["/styles/:ownerId/:styleId/:subResourceId/sprite:name"]=
        {
          ["GET"]="styles:read"
         },             
          ["/styles/:ownerId/:styleId/draft/sprite/:iconId"]=
         {
          ["PUT,DELETE"]="styles:write"
         },
         ["/styles/:ownerId/:styleId/:subResourceId"]=
        {
          ["GET"]="styles:read"
         },  
         ["/styles/:ownerId/:styleId"]=
        {
          ["PATCH"]="styles:write"
         }, 
         ["/upload/tokens/:ownerid"]=
        {
          ["GET"]="tokens:write"
        }, 
        ["/dataSet/dataSet/:ownerid"]=
        {
          ["POST"]="datasets:write"
         }, 
         ["/dataSet/dataSets/:ownerid"]=
        {
          ["GET"]="datasets:list"
         },     
          ["/dataSet/dataSet/:ownerid/:datasetId"]=
        {
          ["PATCH,DELETE"]="datasets:write",
          ["GET"]="datasets:read"
         },     
          ["/api/tileSet/account/:ownerid"]=
        {
          ["GET"]="tilesets:list"
         },
        ["/api/tileSet/:sources"]=
        {
          ["GET"]="tilesets:read",
          ["DELETE,PUT"]="tilesets:write"
         },
        ["/api/fonts/:ownerId/:font/:range"]=
        {
          ["GET"]="fonts:read"
         },
        ["/api/fonts/:ownerId/:font/coverage"]=
        {
          ["GET"]="fonts:read"
         },
        ["/api/fonts/:ownerId/:fontname/metadata"]=
        {
          ["GET"]="fonts:read"
         },
        ["/api/fonts/:ownerId/:fontname/static/:imgName"]=
        {
          ["GET"]="fonts:read"
         },
        ["/api/fonts/:ownerId"]=
        {
          ["GET"]="fonts:list",
            ["POST"]="fonts:write"
         },
        ["/api/fonts/:ownerId/:fontname"]=
        {
            ["DELETE"]="fonts:write"
         },
         ["/api/uploads/:ownerId"]=
         {
            ["GET"]="uploads:list"
         }
}
  