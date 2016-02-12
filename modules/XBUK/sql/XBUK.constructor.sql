/* XBUK nodetypes */
INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`, `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `CanDenyDeletion`, `System`, `Module`) VALUES (9001,'XBUKProject','xbukproject','nodetype','XBUK project',0,0,0,0,0,1,0,0,0,0,0,'XBUK');
INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`, `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `CanDenyDeletion`, `System`, `Module`) VALUES (9002,'XBUKSession','xbuksession','nodetype','XBUK session',0,0,0,0,0,1,0,0,0,0,0,'XBUK');
INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`, `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `CanDenyDeletion`, `System`, `Module`) VALUES (9003,'XBUKScreen','xbukscreen','nodetype','XBUK screen',0,0,0,0,0,1,0,0,0,0,0,'XBUK');

/* Repository Nodetypes */
INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`, `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `CanDenyDeletion`, `System`, `Module`) VALUES (9010,'XSIRRepository','XSIRRepository','nodetype','Repository',0,0,1,0,1,1,0,0,0,0,0,'XBUK');
INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`, `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `CanDenyDeletion`, `System`, `Module`) VALUES (9013,'ImageFolder','XSIRImageFolder','folder_images','Image folder',0,0,1,0,1,1,0,0,0,0,0,'XBUK');
INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`, `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `CanDenyDeletion`, `System`, `Module`) VALUES (9014,'VideoFolder','XSIRVideoFolder','folder_templates','Video folder',0,0,1,0,1,1,0,0,0,0,0,'XBUK');
INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`, `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `CanDenyDeletion`, `System`, `Module`) VALUES (9015,'WidgetFolder','XSIRWidgetFolder','folder_css','Widget folder',0,0,1,0,1,1,0,0,0,0,0,'XBUK');
INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`, `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `CanDenyDeletion`, `System`, `Module`) VALUES (9016,'OtherFolder','XSIROtherFolder','folder_common','Other folder',0,0,1,0,1,1,0,0,0,0,0,'XBUK');

/* VirtualFile Nodetypes */

INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`, `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `CanDenyDeletion`, `System`, `Module`) VALUES (9029,'XSIRTextFile','commonnode','text_file','Text file',1,0,0,0,0,0,1,0,1,0,0,NULL);
INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`, `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `CanDenyDeletion`, `System`, `Module`) VALUES (9030,'XSIRImageFile','imagenode','image','Image file',1,0,0,0,0,0,1,0,1,0,0,NULL);
INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`, `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `CanDenyDeletion`, `System`, `Module`) VALUES (9031,'XSIRVideoFile','commonnode','image','Video file',1,0,0,0,0,0,1,0,1,0,0,NULL);
INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`, `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `CanDenyDeletion`, `System`, `Module`) VALUES (9032,'XSIRBinaryFile','commonnode','binary_file','Binary file',1,0,0,0,0,0,1,0,1,0,0,NULL);
INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`, `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `CanDenyDeletion`, `System`, `Module`) VALUES (9037,'XSIRWidgetFile','commonnode','binary_file','Video file',1,0,0,0,0,0,1,0,1,0,0,NULL);

/* XBUK Actions */
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9004,5012,'Add new XBUK project','addfoldernode','create_proyect.png','Create a new node with XBUK project type',11,NULL,0,'nodetypeid=9001');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9005,9001,'Add new XBUK session','addfoldernode','create_proyect.png','Create a new node with XBUK session type',11,NULL,0,'nodetypeid=9002');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9006,9002,'Add new XBUK screen','addfoldernode','create_proyect.png','Create a new node with XBUK screen type',11,NULL,0,'nodetypeid=9003');

INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9007,9001,'Delete XBUK project','deletenode','delete_proyect.png','Delete a XBUK project',75,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9008,9002,'Delete XBUK session','deletenode','delete_proyect.png','Delete a XBUK session',75,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9009,9003,'Delete XBUK screen','deletenode','delete_proyect.png','Delete a XBUK screen',75,NULL,1,'');

/* Repository Actions */
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9011,5012,'Add new XSIR','addfoldernode','create_proyect.png','Create a new XSIR',11,NULL,0,'nodetypeid=9010');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9012,9010,'Delete XSIR','deletenode','delete_proyect.png','Delete XSIR',75,NULL,1,'');

INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9017,9010,'Add new image folder','addfoldernode','create_proyect.png','Create a new image folder',11,NULL,0,'nodetypeid=9013');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9018,9013,'Delete image folder','deletenode','delete_proyect.png','Delete a repository',75,NULL,1,'');

INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9019,9010,'Add new video folder','addfoldernode','create_proyect.png','Create a new video folder',11,NULL,0,'nodetypeid=9014');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9020,9014,'Delete video folder','deletenode','delete_proyect.png','Delete a video folder',75,NULL,1,'');

INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9021,9010,'Add new widget folder','addfoldernode','create_proyect.png','Create a new widget folder',11,NULL,0,'nodetypeid=9015');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9022,9015,'Delete widget folder','deletenode','delete_proyect.png','Delete a widget folder',75,NULL,1,'');

INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9023,9010,'Add new other folder','addfoldernode','create_proyect.png','Create a new other folder',11,NULL,0,'nodetypeid=9016');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9024,9016,'Delete other folder','deletenode','delete_proyect.png','Delete a other folder',75,NULL,1,'');

INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9088,9010,'Associated groups','modifygroupsnode','groups_server.png','Manage associations of groups with this node',60,NULL,0,'');

/* ImageFolder Actions */

INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9025,9013,'Add new image folder','addfoldernode','create_proyect.png','Create a new image folder',11,NULL,0,'nodetypeid=9013');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9033,9013,'Add images','fileupload_common_multiple','add_file_common.png','Add a set of files to the server',10,NULL,0,'type=xsirimage');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`) VALUES (9045,9013,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9054,9013,'Copy','copy','copiar_documento.png','Copy a node',30,'',0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES (9080,9013,'Download all images','filedownload_multiple','download_image.png','Download all images',80,NULL,0,'',1);
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9084,9013,'Associated groups','modifygroupsnode','groups_server.png','Manage associations of groups with this node',60,NULL,0,'');

/* VideoFolder Actions */
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9026,9014,'Add new video folder','addfoldernode','create_proyect.png','Create a new video folder',11,NULL,0,'nodetypeid=9014');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9034,9014,'Add videos','fileupload_common_multiple','add_file_common.png','Add a set of files to the server',10,NULL,0,'type=xsirvideo');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`) VALUES (9046,9014,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9055,9014,'Copy','copy','copiar_documento.png','Copy a node',30,'',0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES (9081,9014,'Download all videos','filedownload_multiple','download_image.png','Download all videos',80,NULL,0,'',1);
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9085,9014,'Associated groups','modifygroupsnode','groups_server.png','Manage associations of groups with this node',60,NULL,0,'');

/* WidgetFolder Actions */

INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9027,9015,'Add new widget folder','addfoldernode','create_proyect.png','Create a new widget folder',11,NULL,0,'nodetypeid=9015');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9035,9015,'Add widgets','fileupload_common_multiple','add_file_common.png','Add a set of files to the server',10,NULL,0,'type=xsirwidget');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`) VALUES (9047,9015,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9056,9015,'Copy','copy','copiar_documento.png','Copy a node',30,'',0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES (9082,9015,'Download all widgets','filedownload_multiple','download_image.png','Download all widgets',80,NULL,0,'',1);
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9086,9015,'Associated groups','modifygroupsnode','groups_server.png','Manage associations of groups with this node',60,NULL,0,'');

/* OtherFolder Actions */

INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9028,9016,'Add new other folder','addfoldernode','create_proyect.png','Create a new other folder',11,NULL,0,'nodetypeid=9016');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9036,9016,'Add files','fileupload_common_multiple','add_file_common.png','Add a set of files to the server',10,NULL,0,'type=common');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`) VALUES (9048,9016,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9057,9016,'Copy','copy','copiar_documento.png','Copy a node',30,'',0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES (9083,9016,'Download all files','filedownload_multiple','download_image.png','Download all files',80,NULL,0,'',1);
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9087,9016,'Associated groups','modifygroupsnode','groups_server.png','Manage associations of groups with this node',60,NULL,0,'');

/* XSIRImageFile */

INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)  VALUES (9038,9030,'Image preview','filepreview','view_image.png','Preview an image',80,NULL,0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9040,9030,'Delete image','deletenode','delete_proyect.png','Delete a image',75,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`) VALUES (9049,9030,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9058,9030,'Copy','copy','copiar_documento.png','Copy a node',30,'',0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9064,9030,'Version manager','manageversions','manage_versions.png','Manage version repository',73,NULL,0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`,`Icon`, `Description`,`Sort`, `Module`, `Multiple`)             VALUES (9069,9030,'Edit metadata', 'managemetadata', 'xix.png', 'Edit the metadata info', 20, NULL, 0);
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`,`Multiple`, `Params`) VALUES ( 9070, 9030 ,"Semantic Tags", "setmetadata", "change_next_state.png","Managing semantic tags related to the current node.", 999, "ximTAGS", 0, NULL);
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)  VALUES (9075,9030,'Download file','filedownload','download_file_txt_bin.png','Download selected file',80,NULL,0,'');


/* XSIRTextFile */

INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`,`Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)       VALUES (9039,9029,'Edit file','edittext','edit_file_txt.png','Edit content of text document',20,NULL,0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9041,9029,'Delete text file','deletenode','delete_proyect.png','Delete a text file',75,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`) VALUES (9050,9029,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9059,9029,'Copy','copy','copiar_documento.png','Copy a node',30,'',0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9065,9029,'Version manager','manageversions','manage_versions.png','Manage version repository',73,NULL,0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`,`Multiple`, `Params`) VALUES ( 9071, 9029 ,"Semantic Tags", "setmetadata", "change_next_state.png","Managing semantic tags related to the current node.", 999, "ximTAGS", 0, NULL);
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)  VALUES (9076,9029,'Download file','filedownload','download_file_txt_bin.png','Download selected file',80,NULL,0,'');

/* XSIRVideoFile */
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9042,9031,'Delete video','deletenode','delete_proyect.png','Delete a video',75,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`) VALUES (9051,9031,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9060,9031,'Copy','copy','copiar_documento.png','Copy a node',30,'',0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)  VALUES (9063,9031,'Video preview','filepreview','view_image.png','Preview a video',80,NULL,0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9066,9031,'Version manager','manageversions','manage_versions.png','Manage version repository',73,NULL,0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`,`Multiple`, `Params`) VALUES ( 9072, 9031 ,"Semantic Tags", "setmetadata", "change_next_state.png","Managing semantic tags related to the current node.", 999, "ximTAGS", 0, NULL);
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)  VALUES (9077,9031,'Download file','filedownload','download_file_txt_bin.png','Download selected file',80,NULL,0,'');

/* XSIRBinaryFile */

INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9043,9032,'Delete file','deletenode','delete_proyect.png','Delete file',75,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`) VALUES (9052,9032,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9061,9032,'Copy','copy','copiar_documento.png','Copy a node',30,'',0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9067,9032,'Version manager','manageversions','manage_versions.png','Manage version repository',73,NULL,0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`,`Multiple`, `Params`) VALUES ( 9073, 9032 ,"Semantic Tags", "setmetadata", "change_next_state.png","Managing semantic tags related to the current node.", 999, "ximTAGS", 0, NULL);
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)  VALUES (9078,9032,'Download file','filedownload','download_file_txt_bin.png','Download selected file',80,NULL,0,'');

/* XSIRWidgetFile */

INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9044,9037,'Delete widget','deletenode','delete_proyect.png','Delete widget',75,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`) VALUES (9053,9037,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9062,9037,'Copy','copy','copiar_documento.png','Copy a node',30,'',0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)        VALUES (9068,9037,'Version manager','manageversions','manage_versions.png','Manage version repository',73,NULL,0,'');
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`,`Multiple`, `Params`) VALUES ( 9074, 9037 ,"Semantic Tags", "setmetadata", "change_next_state.png","Managing semantic tags related to the current node.", 999, "ximTAGS", 0, NULL);
INSERT INTO `Actions`(`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`,`Sort`, `Module`, `Multiple`, `Params`)  VALUES (9079,9037,'Download file','filedownload','download_file_txt_bin.png','Download selected file',80,NULL,0,'');

/* XBUK NodeAllowedContents */
INSERT INTO `NodeAllowedContents` VALUES (150,5012,9001,0);
INSERT INTO `NodeAllowedContents` VALUES (151,9001,9002,0);
INSERT INTO `NodeAllowedContents` VALUES (152,9002,9003,0);

/* Repository NodeAllowedContents */
INSERT INTO `NodeAllowedContents` VALUES (153,5012,9010,0);
INSERT INTO `NodeAllowedContents` VALUES (154,9010,9013,0);
INSERT INTO `NodeAllowedContents` VALUES (155,9013,9013,0);
INSERT INTO `NodeAllowedContents` VALUES (156,9010,9014,0);
INSERT INTO `NodeAllowedContents` VALUES (157,9014,9014,0);
INSERT INTO `NodeAllowedContents` VALUES (158,9010,9015,0);
INSERT INTO `NodeAllowedContents` VALUES (159,9015,9015,0);
INSERT INTO `NodeAllowedContents` VALUES (160,9010,9016,0);
INSERT INTO `NodeAllowedContents` VALUES (161,9016,9016,0);
INSERT INTO `NodeAllowedContents` VALUES (170,9010,5053,0);

/* VirtualImageFolder NodeAllowedContents */
INSERT INTO `NodeAllowedContents` VALUES (162,9013,9030,0);

/* VirtualVideoFolder NodeAllowedContents */
INSERT INTO `NodeAllowedContents` VALUES (163,9014,9031,0);

/* VirtualWidgetFolder NodeAllowedContents */
INSERT INTO `NodeAllowedContents` VALUES (164,9015,9037,0);

/* VirtualOtherFolder NodeAllowedContents */
INSERT INTO `NodeAllowedContents` VALUES (165,9016,9029,0);
INSERT INTO `NodeAllowedContents` VALUES (166,9016,9030,0);
INSERT INTO `NodeAllowedContents` VALUES (167,9016,9031,0);
INSERT INTO `NodeAllowedContents` VALUES (168,9016,9032,0);
INSERT INTO `NodeAllowedContents` VALUES (169,9016,9037,0);

INSERT INTO `NodeAllowedContents` VALUES (171,9010,5083,0);

/* XBUK RelRolesActions */

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9004,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9004,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9005,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9005,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9006,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9006,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9007,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9007,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9008,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9008,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9009,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9009,0,1,3);

/* Repository RelRolesActions */
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9011,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9011,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9012,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9012,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9017,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9017,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9018,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9018,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9019,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9019,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9020,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9020,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9021,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9021,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9022,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9022,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9023,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9023,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9024,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9024,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9025,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9025,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9026,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9026,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9027,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9027,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9028,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9028,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9033,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9033,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9034,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9034,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9035,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9035,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9036,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9036,0,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9038,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9038,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9038,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9038,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9039,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9039,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9039,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9039,7,1,3);



INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9040,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9040,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9040,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9040,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9041,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9041,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9041,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9041,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9042,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9042,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9042,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9042,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9043,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9043,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9043,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9043,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9044,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9044,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9044,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9044,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9045,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9045,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9045,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9045,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9046,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9046,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9046,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9046,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9047,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9047,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9047,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9047,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9048,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9048,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9048,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9048,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9049,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9049,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9049,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9049,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9050,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9050,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9050,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9050,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9051,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9051,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9051,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9051,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9052,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9052,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9052,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9052,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9053,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9053,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9053,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9053,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9054,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9054,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9054,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9054,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9055,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9055,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9055,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9055,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9056,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9056,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9056,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9056,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9057,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9057,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9057,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9057,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9058,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9058,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9058,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9058,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9059,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9059,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9059,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9059,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9060,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9060,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9060,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9060,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9061,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9061,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9061,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9061,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9062,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9062,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9062,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9062,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9063,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9063,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9063,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9063,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9064,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9064,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9064,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9064,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9065,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9065,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9065,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9065,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9065,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9065,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9065,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9065,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9066,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9066,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9066,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9066,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9067,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9067,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9067,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9067,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9068,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9068,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9068,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9068,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9069,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9069,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9069,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9069,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9070,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9070,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9070,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9070,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9071,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9071,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9071,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9071,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9072,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9072,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9072,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9072,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9073,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9073,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9073,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9073,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9074,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9074,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9074,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9074,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9075,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9075,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9075,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9075,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9076,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9076,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9076,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9076,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9077,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9077,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9077,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9077,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9078,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9078,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9078,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9078,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9079,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9079,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9079,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9079,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9080,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9080,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9080,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9080,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9081,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9081,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9081,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9081,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9082,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9082,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9082,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9082,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9083,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9083,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9083,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9083,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9084,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9084,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9084,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9084,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9085,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9085,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9085,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9085,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9086,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9086,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9086,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9086,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9087,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9087,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9087,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9087,7,1,3);

INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9088,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9088,0,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,201,9088,7,1,3);
INSERT INTO `RelRolesActions`(`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (NULL,204,9088,7,1,3);

/* RelNodetypeMimetype */
INSERT INTO `RelNodeTypeMimeType` VALUES (200, 9030,  ';jpeg;jpg;gif;png;ico;bmp;', 'image');
INSERT INTO `RelNodeTypeMimeType` VALUES (201, 9029,  ';txt;js;json;coffee;css;scss;svg;php;asp;aspx;', '');
INSERT INTO `RelNodeTypeMimeType` VALUES (202, 9031,  ';mp4;avi;ogv;flv;mkv;wmv;mpg;3gp;webm;mov;', '');
INSERT INTO `RelNodeTypeMimeType` VALUES (203, 9032,  '*', '');
INSERT INTO `RelNodeTypeMimeType` VALUES (204, 9037,  ';pwz;', '');