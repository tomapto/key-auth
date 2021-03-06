return {
      ["/api/token/:ownerId"]=
        {
          ["GET"]="tokens:read",
          ["POST"]="tokens:write"
        },
        ["/api/scopes/:ownerId"]=
        {
          ["GET"]="scopes:list"
        },
        ["/api/token/:ownerId/:tokenid"]=
        {
          ["GET"]="tokens:read",
          ["PUT,PATCH,DELETE"]="tokens:write"
        },
          
         ["/api/scope/:ownerId"]=
        {
          ["GET"]="scopes:list"
        },
        ["/api/styles/:ownerId"]=
        {
          ["GET"]="styles:list",
          ["POST"]="styles:write"
         },
         ["/api/styles/:ownerId/duplicate"]=
        {
          ["POST"]="styles:write"
         },
           ["/api/styles/:ownerId/:styleId"]=
        {
          ["DELETE,PATCH"]="styles:write"
         },
           ["/api/styles/:ownerId/:styleId/share"]=
        {
          ["GET"]="styles:read"
         },
           ["/api/styles/:ownerId/:styleId.zip"]=
        {
          ["GET"]="styles:read"
         },  
         ["/api/styles/:ownerId/:styleId/:subResourceId/static"]=
        {
          ["GET"]="styles:read"
         },  
         ["/api/styles/:ownerId/:styleId/:subResourceId/sprite:name"]=
        {
          ["GET"]="styles:read"
         },             
          ["/api/styles/:ownerId/:styleId/draft/sprite/:iconId"]=
         {
          ["PUT,DELETE"]="styles:write"
         },
         ["/api/styles/:ownerId/:styleId/:subResourceId"]=
        {
          ["GET"]="styles:read"
         },
         ["/upload/tokens/:ownerId"]=
        {
          ["GET"]="tokens:write"
        }, 
        ["/api/dataSet/:ownerId"]=
        {
          ["POST"]="datasets:write"
         }, 
         ["/api/dataSet/:ownerId"]=
        {
          ["GET"]="datasets:list",
          ["POST"]="datasets:write"
         },
          ["/api/dataSet/:ownerId/:datasetId"]=
        {
          ["PATCH,DELETE"]="datasets:write",
          ["GET"]="datasets:read"
         },
        ["/api/dataOperate/:owneId/:datasetId/query"]=
        {
          ["GET,POST"]="datasets:read"
         },["/api/data/:ownerId/:datasetId"]=
        {
          ["GET"]="datasets:read",
          ["POST"]="datasets:read"
         },
          ["/api/tileSet/account/:ownerId"]=
        {
          ["GET"]="tilesets:list"
         },
        ["/api/tileSet/:sources"]=
        {
          ["GET"]="tilesets:read",
          ["DELETE,PUT"]="tilesets:write"
         },
        ["/api/tileSet/:sources/:jsonstats"]=
        {
          ["GET"]="tilesets:read"
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
            ["GET"]="uploads:list",
            ["POST"]="uploads:write"
        },
        ["/api/uploads/:ownerId/:uploadId"]=
        {
            ["DELETE"]="uploads:write"
        },
        ["/api/uploads/:ownerId/credentials"]=
        {
           ["GET"]="uploads:write"
        }
}
  