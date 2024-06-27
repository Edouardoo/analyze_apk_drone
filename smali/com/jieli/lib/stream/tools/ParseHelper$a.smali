.class Lcom/jieli/lib/stream/tools/ParseHelper$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/stream/tools/ParseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/ParseHelper$a;->a:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    .line 424
    iput-object p2, p0, Lcom/jieli/lib/stream/tools/ParseHelper$a;->b:Ljava/lang/String;

    .line 425
    iput-object p3, p0, Lcom/jieli/lib/stream/tools/ParseHelper$a;->c:Ljava/lang/String;

    .line 426
    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/stream/tools/ParseHelper$a;)Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$a;->a:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 467
    :try_start_0
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 468
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 470
    :cond_0
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 471
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 473
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 474
    :cond_2
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parseVideoInfoText: dataString is null"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_3
    :goto_0
    return-void

    .line 477
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 483
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 484
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 485
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "file_list"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 488
    :try_start_1
    const-string v1, "file_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 489
    invoke-static {v0}, Lcom/jieli/lib/stream/tools/ParseHelper;->a(Lorg/json/JSONArray;)[Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    .line 491
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 478
    :catch_1
    move-exception v0

    .line 479
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 502
    new-instance v2, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v2}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    .line 504
    const/16 v0, 0x15

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->setDefaultPort(I)V

    .line 506
    :try_start_0
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Get device ip fail"

    invoke-static {v0, v3}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v0, "192.168.1.1"

    .line 511
    :cond_0
    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 575
    :goto_1
    return v0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 521
    :catch_1
    move-exception v0

    .line 522
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 525
    :cond_1
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v0

    .line 526
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reply="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 531
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 535
    :goto_2
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Reply code is not a positive completion response."

    invoke-static {v0, v2}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 536
    goto :goto_1

    .line 532
    :catch_2
    move-exception v0

    .line 533
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 539
    :cond_2
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 541
    const/4 v0, 0x0

    .line 543
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->printWorkingDirectory()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 547
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/jieli/lib/stream/tools/ParseHelper$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    :try_start_4
    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 556
    :goto_4
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->getInstance()Lcom/jieli/lib/stream/tools/ParseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/ParseHelper;->getSortedVideo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 558
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 560
    const/4 v0, 0x2

    :try_start_5
    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 565
    :goto_5
    const/high16 v0, 0x500000

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->setBufferSize(I)V

    .line 567
    :try_start_6
    const-string v0, "vf_order.txt"

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 568
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "upload vf_order.txt failed!"

    invoke-static {v0, v4}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 578
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 584
    :goto_6
    :try_start_8
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 590
    :goto_7
    :try_start_9
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :goto_8
    move v0, v1

    .line 569
    goto/16 :goto_1

    .line 544
    :catch_3
    move-exception v3

    .line 545
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 552
    :catch_4
    move-exception v0

    .line 553
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 561
    :catch_5
    move-exception v0

    .line 562
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 579
    :catch_6
    move-exception v0

    .line 580
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 585
    :catch_7
    move-exception v0

    .line 586
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 591
    :catch_8
    move-exception v0

    .line 592
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 571
    :cond_3
    const/4 v0, 0x1

    .line 578
    :try_start_a
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 584
    :goto_9
    :try_start_b
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 590
    :goto_a
    :try_start_c
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto/16 :goto_1

    .line 591
    :catch_9
    move-exception v1

    .line 592
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 579
    :catch_a
    move-exception v1

    .line 580
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 585
    :catch_b
    move-exception v1

    .line 586
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 573
    :catch_c
    move-exception v0

    .line 574
    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 578
    :try_start_e
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 584
    :goto_b
    :try_start_f
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    .line 590
    :goto_c
    :try_start_10
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    :goto_d
    move v0, v1

    .line 575
    goto/16 :goto_1

    .line 579
    :catch_d
    move-exception v0

    .line 580
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 585
    :catch_e
    move-exception v0

    .line 586
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 591
    :catch_f
    move-exception v0

    .line 592
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 577
    :catchall_0
    move-exception v0

    .line 578
    :try_start_11
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    .line 584
    :goto_e
    :try_start_12
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_11

    .line 590
    :goto_f
    :try_start_13
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_12

    .line 593
    :goto_10
    throw v0

    .line 579
    :catch_10
    move-exception v1

    .line 580
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 585
    :catch_11
    move-exception v1

    .line 586
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 591
    :catch_12
    move-exception v1

    .line 592
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 430
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 431
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$a;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jieli/lib/stream/tools/ParseHelper$a;->a(Ljava/lang/String;)V

    .line 433
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/ParseHelper$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fail to store file to FTP server!"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$a;->a:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    if-eqz v0, :cond_0

    .line 436
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 437
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jieli/lib/stream/tools/ParseHelper$a$1;

    invoke-direct {v1, p0}, Lcom/jieli/lib/stream/tools/ParseHelper$a$1;-><init>(Lcom/jieli/lib/stream/tools/ParseHelper$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 443
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success to store file to FTP server!"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$a;->a:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    if-eqz v0, :cond_0

    .line 448
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 449
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jieli/lib/stream/tools/ParseHelper$a$2;

    invoke-direct {v1, p0}, Lcom/jieli/lib/stream/tools/ParseHelper$a$2;-><init>(Lcom/jieli/lib/stream/tools/ParseHelper$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 455
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0
.end method
