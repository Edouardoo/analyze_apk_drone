.class public final Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/SubnetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SubnetInfo"
.end annotation


# static fields
.field private static final UNSIGNED_INT_MASK:J = 0xffffffffL


# instance fields
.field final synthetic this$0:Lorg/apache/commons/net/util/SubnetUtils;


# direct methods
.method private constructor <init>(Lorg/apache/commons/net/util/SubnetUtils;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/net/util/SubnetUtils;Lorg/apache/commons/net/util/SubnetUtils$1;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;-><init>(Lorg/apache/commons/net/util/SubnetUtils;)V

    return-void
.end method

.method private address()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$200(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    return v0
.end method

.method private broadcast()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    return v0
.end method

.method private broadcastLong()J
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private high()I
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcast()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcastLong()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->networkLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private low()I
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->network()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcastLong()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->networkLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->network()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private netmask()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$000(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    return v0
.end method

.method private network()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$100(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    return v0
.end method

.method private networkLong()J
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$100(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public asInteger(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->access$400(Lorg/apache/commons/net/util/SubnetUtils;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->address()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressCount()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCountLong()J

    move-result-wide v0

    .line 187
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 188
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count is larger than an integer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_0
    long-to-int v0, v0

    return v0
.end method

.method public getAddressCountLong()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 201
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcastLong()J

    move-result-wide v2

    .line 202
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->networkLong()J

    move-result-wide v4

    .line 203
    sub-long v4, v2, v4

    iget-object v2, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {v2}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-long v2, v2

    add-long/2addr v2, v4

    .line 204
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    :goto_1
    return-wide v0

    .line 203
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 204
    goto :goto_1
.end method

.method public getAllAddresses()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCount()I

    move-result v0

    .line 220
    new-array v2, v0, [Ljava/lang/String;

    .line 221
    if-nez v0, :cond_0

    move-object v0, v2

    .line 227
    :goto_0
    return-object v0

    .line 224
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result v3

    if-gt v1, v3, :cond_1

    .line 225
    iget-object v3, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v4, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v4, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 224
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 227
    goto :goto_0
.end method

.method public getBroadcastAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcast()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCidrSignature()Ljava/lang/String;
    .locals 5

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v2, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->address()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v3, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->netmask()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$700(Lorg/apache/commons/net/util/SubnetUtils;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHighAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLowAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetmask()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->netmask()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->network()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInRange(I)Z
    .locals 8

    .prologue
    const-wide v6, 0xffffffffL

    .line 135
    int-to-long v0, p1

    and-long/2addr v0, v6

    .line 136
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    .line 137
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    .line 138
    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInRange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->access$400(Lorg/apache/commons/net/util/SubnetUtils;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->isInRange(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    const-string v1, "CIDR Signature:\t["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getCidrSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Netmask: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetmask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Network:\t["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetworkAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Broadcast:\t["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getBroadcastAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "First Address:\t["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getLowAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Last Address:\t["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getHighAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "# Addresses:\t["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
