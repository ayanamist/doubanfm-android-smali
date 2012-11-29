.class public Lcom/douban/radio/widget/WidgetLarge;
.super Lfm/douban/widget/WidgetProvider;
.source "WidgetLarge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lfm/douban/widget/WidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public playViews(Landroid/content/Context;Lfm/douban/service/RadioState;)Landroid/widget/RemoteViews;
    .locals 19
    .parameter "context"
    .parameter "state"

    .prologue
    .line 42
    const/16 v16, 0x0

    .line 43
    .local v16, views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->hasPicture:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 44
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->isPaused:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 45
    new-instance v16, Landroid/widget/RemoteViews;

    .end local v16           #views:Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f030014

    invoke-direct/range {v16 .. v18}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 46
    .restart local v16       #views:Landroid/widget/RemoteViews;
    const v17, 0x7f080044

    invoke-virtual/range {p0 .. p1}, Lcom/douban/radio/widget/WidgetLarge;->resumeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 59
    :goto_0
    const v18, 0x7f0800b4

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->isLike:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const v17, 0x7f020021

    :goto_1
    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 60
    const v18, 0x7f0800b4

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->isLike:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/douban/radio/widget/WidgetLarge;->likeIntent(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 62
    const v17, 0x7f0800b5

    const v18, 0x7f02007b

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 63
    const v17, 0x7f0800b5

    invoke-virtual/range {p0 .. p1}, Lcom/douban/radio/widget/WidgetLarge;->hateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 65
    const v17, 0x7f08004d

    invoke-virtual/range {p0 .. p1}, Lcom/douban/radio/widget/WidgetLarge;->skipIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 66
    const v17, 0x7f08004d

    const v18, 0x7f02006e

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 68
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->hasSong:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p2

    iget-object v0, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 69
    move-object/from16 v0, p2

    iget-object v12, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    .line 70
    .local v12, song:Lfm/douban/model/Song;
    const v17, 0x7f0800b3

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 71
    const v17, 0x7f0800b3

    iget-object v0, v12, Lfm/douban/model/Song;->artist:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 73
    const v17, 0x7f08004e

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 74
    const v17, 0x7f08004e

    iget-object v0, v12, Lfm/douban/model/Song;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v12}, Lfm/douban/model/Song;->pictureUrl()Ljava/lang/String;

    move-result-object v11

    .line 77
    .local v11, pic:Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lfm/douban/FmApp;

    .line 79
    .local v3, app:Lfm/douban/FmApp;
    invoke-virtual {v3}, Lfm/douban/FmApp;->getImageManager()Lnatalya/graphics/ImageManager;

    move-result-object v9

    .line 80
    .local v9, im:Lnatalya/graphics/ImageManager;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v11, v0}, Lnatalya/graphics/ImageManager;->hasImage(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 83
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v11, v0}, Lnatalya/graphics/ImageManager;->getImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 84
    .local v4, bitmap:Landroid/graphics/Bitmap;
    const-string v14, "tmp1.jpg"

    .line 85
    .local v14, tmp1:Ljava/lang/String;
    const-string v15, "tmp2.jpg"

    .line 86
    .local v15, tmp2:Ljava/lang/String;
    move-object v13, v14

    .line 87
    .local v13, tmp:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, path:Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 89
    const v17, 0x3dcccccd

    move/from16 v0, v17

    invoke-static {v4, v0}, Lnatalya/graphics/Image;->getSquareBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 90
    new-instance v6, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v6, file:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v7, file2:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 95
    move-object v13, v15

    .line 96
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 99
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 101
    move-object v13, v14

    .line 102
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 106
    :cond_1
    :try_start_0
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Lnatalya/graphics/Image;->generateBitstream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v5

    .line 107
    .local v5, data:[B
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 108
    .local v8, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v8, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 109
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 110
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "file://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 112
    const v17, 0x7f080046

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v3           #app:Lfm/douban/FmApp;
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #data:[B
    .end local v6           #file:Ljava/io/File;
    .end local v7           #file2:Ljava/io/File;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v9           #im:Lnatalya/graphics/ImageManager;
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #pic:Ljava/lang/String;
    .end local v12           #song:Lfm/douban/model/Song;
    .end local v13           #tmp:Ljava/lang/String;
    .end local v14           #tmp1:Ljava/lang/String;
    .end local v15           #tmp2:Ljava/lang/String;
    :cond_2
    :goto_3
    const v17, 0x7f0800b2

    const-class v18, Lcom/douban/radio/app/RadioActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/douban/radio/widget/WidgetLarge;->playerIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 131
    return-object v16

    .line 48
    :cond_3
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->isResumed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 49
    new-instance v16, Landroid/widget/RemoteViews;

    .end local v16           #views:Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f030016

    invoke-direct/range {v16 .. v18}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 53
    .restart local v16       #views:Landroid/widget/RemoteViews;
    :goto_4
    const v17, 0x7f080044

    invoke-virtual/range {p0 .. p1}, Lcom/douban/radio/widget/WidgetLarge;->pauseIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 51
    :cond_4
    new-instance v16, Landroid/widget/RemoteViews;

    .end local v16           #views:Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f030015

    invoke-direct/range {v16 .. v18}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v16       #views:Landroid/widget/RemoteViews;
    goto :goto_4

    .line 56
    :cond_5
    new-instance v16, Landroid/widget/RemoteViews;

    .end local v16           #views:Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f030013

    invoke-direct/range {v16 .. v18}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v16       #views:Landroid/widget/RemoteViews;
    goto/16 :goto_0

    .line 59
    :cond_6
    const v17, 0x7f020023

    goto/16 :goto_1

    .line 60
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 117
    .restart local v3       #app:Lfm/douban/FmApp;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #im:Lnatalya/graphics/ImageManager;
    .restart local v10       #path:Ljava/lang/String;
    .restart local v11       #pic:Ljava/lang/String;
    .restart local v12       #song:Lfm/douban/model/Song;
    .restart local v13       #tmp:Ljava/lang/String;
    .restart local v14       #tmp1:Ljava/lang/String;
    .restart local v15       #tmp2:Ljava/lang/String;
    :cond_8
    const v17, 0x7f080046

    const v18, 0x7f02003c

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3

    .line 121
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #path:Ljava/lang/String;
    .end local v13           #tmp:Ljava/lang/String;
    .end local v14           #tmp1:Ljava/lang/String;
    .end local v15           #tmp2:Ljava/lang/String;
    :cond_9
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;I)V

    goto :goto_3

    .line 126
    .end local v3           #app:Lfm/douban/FmApp;
    .end local v9           #im:Lnatalya/graphics/ImageManager;
    .end local v11           #pic:Ljava/lang/String;
    .end local v12           #song:Lfm/douban/model/Song;
    :cond_a
    const v17, 0x7f0800b3

    const/16 v18, 0x8

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 127
    const v17, 0x7f08004e

    const/16 v18, 0x8

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 113
    .restart local v3       #app:Lfm/douban/FmApp;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #file2:Ljava/io/File;
    .restart local v9       #im:Lnatalya/graphics/ImageManager;
    .restart local v10       #path:Ljava/lang/String;
    .restart local v11       #pic:Ljava/lang/String;
    .restart local v12       #song:Lfm/douban/model/Song;
    .restart local v13       #tmp:Ljava/lang/String;
    .restart local v14       #tmp1:Ljava/lang/String;
    .restart local v15       #tmp2:Ljava/lang/String;
    :catch_0
    move-exception v17

    goto :goto_3
.end method

.method public stopViews(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 34
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030012

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 35
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0800b1

    invoke-virtual {p0, p1}, Lcom/douban/radio/widget/WidgetLarge;->startIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 36
    const v1, 0x7f0800b0

    const-class v2, Lcom/douban/radio/app/RadioActivity;

    invoke-virtual {p0, p1, v2}, Lcom/douban/radio/widget/WidgetLarge;->playerIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 37
    return-object v0
.end method
