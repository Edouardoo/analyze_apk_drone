.class Lcom/videooperate/fragment/LocationVideoFragment$FileComparator;
.super Ljava/lang/Object;
.source "LocationVideoFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/videooperate/fragment/LocationVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/hfufo/bean/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/fragment/LocationVideoFragment;


# direct methods
.method constructor <init>(Lcom/videooperate/fragment/LocationVideoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/fragment/LocationVideoFragment;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/videooperate/fragment/LocationVideoFragment$FileComparator;->this$0:Lcom/videooperate/fragment/LocationVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hfufo/bean/FileInfo;Lcom/hfufo/bean/FileInfo;)I
    .locals 8
    .param p1, "o1"    # Lcom/hfufo/bean/FileInfo;
    .param p2, "o2"    # Lcom/hfufo/bean/FileInfo;

    .prologue
    const/4 v6, 0x0

    .line 230
    invoke-virtual {p1}, Lcom/hfufo/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/videooperate/utils/ObjectUtils;->convertTolong(Ljava/lang/Object;I)J

    move-result-wide v2

    .line 231
    .local v2, "flag_v1_ctreat_time":J
    invoke-virtual {p2}, Lcom/hfufo/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/videooperate/utils/ObjectUtils;->convertTolong(Ljava/lang/Object;I)J

    move-result-wide v4

    .line 232
    .local v4, "flag_v2_ctreat_time":J
    sub-long v6, v4, v2

    long-to-int v0, v6

    .line 233
    .local v0, "flag":I
    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/hfufo/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hfufo/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 236
    .end local v0    # "flag":I
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 226
    check-cast p1, Lcom/hfufo/bean/FileInfo;

    check-cast p2, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/videooperate/fragment/LocationVideoFragment$FileComparator;->compare(Lcom/hfufo/bean/FileInfo;Lcom/hfufo/bean/FileInfo;)I

    move-result v0

    return v0
.end method
