.class final Lcom/google/zxing/client/result/SMSMMSResultParser;
.super Lcom/google/zxing/client/result/ResultParser;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static addNumberVia(Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x3b

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "via="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;
    .locals 8

    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const-string v0, "sms:"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SMS:"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mms:"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MMS:"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {v6}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v0, "subject"

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "body"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move v2, v3

    move-object v5, v0

    :goto_1
    const/16 v0, 0x3f

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_3

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v2, -0x1

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6, v3}, Ljava/util/Vector;-><init>(I)V

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7, v3}, Ljava/util/Vector;-><init>(I)V

    :goto_3
    const/16 v3, 0x2c

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-le v3, v2, :cond_5

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7, v2}, Lcom/google/zxing/client/result/SMSMMSResultParser;->addNumberVia(Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V

    move v2, v3

    goto :goto_3

    :cond_4
    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/google/zxing/client/result/SMSMMSResultParser;->addNumberVia(Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V

    new-instance v4, Lcom/google/zxing/client/result/SMSParsedResult;

    invoke-static {v6}, Lcom/google/zxing/client/result/SMSMMSResultParser;->toStringArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/google/zxing/client/result/SMSMMSResultParser;->toStringArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2, v5, v1}, Lcom/google/zxing/client/result/SMSParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v2, v0

    move-object v1, v4

    move-object v5, v4

    goto :goto_1
.end method
