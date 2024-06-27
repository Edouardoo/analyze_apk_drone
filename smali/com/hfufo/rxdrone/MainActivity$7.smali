.class Lcom/hfufo/rxdrone/MainActivity$7;
.super Lorg/opencv/android/BaseLoaderCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/MainActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/MainActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/MainActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$7;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0, p2}, Lorg/opencv/android/BaseLoaderCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onManagerConnected(I)V
    .locals 14
    .param p1, "status"    # I

    .prologue
    .line 1306
    packed-switch p1, :pswitch_data_0

    .line 1358
    invoke-super {p0, p1}, Lorg/opencv/android/BaseLoaderCallback;->onManagerConnected(I)V

    .line 1363
    :goto_0
    return-void

    .line 1311
    :pswitch_0
    :try_start_0
    iget-object v11, p0, Lcom/hfufo/rxdrone/MainActivity$7;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v11}, Lcom/hfufo/rxdrone/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070011

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 1312
    .local v4, "is":Ljava/io/InputStream;
    iget-object v11, p0, Lcom/hfufo/rxdrone/MainActivity$7;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/MainActivity;->access$1500(Lcom/hfufo/rxdrone/MainActivity;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "cascade"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 1313
    .local v2, "cascadeDir":Ljava/io/File;
    iget-object v11, p0, Lcom/hfufo/rxdrone/MainActivity$7;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    new-instance v12, Ljava/io/File;

    const-string v13, "rpalm.xml"

    invoke-direct {v12, v2, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/MainActivity;->access$1602(Lcom/hfufo/rxdrone/MainActivity;Ljava/io/File;)Ljava/io/File;

    .line 1314
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v11, p0, Lcom/hfufo/rxdrone/MainActivity$7;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/MainActivity;->access$1600(Lcom/hfufo/rxdrone/MainActivity;)Ljava/io/File;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1316
    .local v5, "os":Ljava/io/FileOutputStream;
    const/16 v11, 0x1000

    new-array v0, v11, [B

    .line 1318
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_0

    .line 1319
    const/4 v11, 0x0

    invoke-virtual {v5, v0, v11, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1351
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "cascadeDir":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 1352
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1321
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "cascadeDir":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1322
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 1332
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u8def\u5f84"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/hfufo/rxdrone/MainActivity$7;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v13}, Lcom/hfufo/rxdrone/MainActivity;->access$1600(Lcom/hfufo/rxdrone/MainActivity;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1334
    iget-object v11, p0, Lcom/hfufo/rxdrone/MainActivity$7;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v11}, Lcom/hfufo/rxdrone/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070008

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    .line 1335
    .local v9, "palm_is":Ljava/io/InputStream;
    iget-object v11, p0, Lcom/hfufo/rxdrone/MainActivity$7;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const-string v12, "cascade"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/hfufo/rxdrone/MainActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    .line 1336
    .local v8, "palm_cascadeDir":Ljava/io/File;
    iget-object v11, p0, Lcom/hfufo/rxdrone/MainActivity$7;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    new-instance v12, Ljava/io/File;

    const-string v13, "fist.xml"

    invoke-direct {v12, v8, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/hfufo/rxdrone/MainActivity;->access$1702(Lcom/hfufo/rxdrone/MainActivity;Ljava/io/File;)Ljava/io/File;

    .line 1337
    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v11, p0, Lcom/hfufo/rxdrone/MainActivity$7;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/MainActivity;->access$1700(Lcom/hfufo/rxdrone/MainActivity;)Ljava/io/File;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1339
    .local v10, "palm_os":Ljava/io/FileOutputStream;
    const/16 v11, 0x1000

    new-array v6, v11, [B

    .line 1341
    .local v6, "palm_buffer":[B
    :goto_2
    invoke-virtual {v9, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "palm_bytesRead":I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_1

    .line 1342
    const/4 v11, 0x0

    invoke-virtual {v10, v6, v11, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 1344
    :cond_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1345
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 1346
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u8def\u5f84"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/hfufo/rxdrone/MainActivity$7;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v13}, Lcom/hfufo/rxdrone/MainActivity;->access$1600(Lcom/hfufo/rxdrone/MainActivity;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1350
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1306
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
