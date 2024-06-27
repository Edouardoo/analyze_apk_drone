.class Lcom/videooperate/service/ScanLocationService$FileComparatorOnSize;
.super Ljava/lang/Object;
.source "ScanLocationService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/videooperate/service/ScanLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileComparatorOnSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/videooperate/bean/Song;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/service/ScanLocationService;


# direct methods
.method constructor <init>(Lcom/videooperate/service/ScanLocationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/service/ScanLocationService;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/videooperate/service/ScanLocationService$FileComparatorOnSize;->this$0:Lcom/videooperate/service/ScanLocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/videooperate/bean/Song;Lcom/videooperate/bean/Song;)I
    .locals 8
    .param p1, "o1"    # Lcom/videooperate/bean/Song;
    .param p2, "o2"    # Lcom/videooperate/bean/Song;

    .prologue
    const-wide/16 v6, 0x0

    .line 275
    invoke-virtual {p1}, Lcom/videooperate/bean/Song;->getSize()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/videooperate/bean/Song;->getSize()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 276
    .local v0, "diff":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 277
    const/4 v2, 0x1

    .line 281
    :goto_0
    return v2

    .line 278
    :cond_0
    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    .line 279
    const/4 v2, 0x0

    goto :goto_0

    .line 281
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 266
    check-cast p1, Lcom/videooperate/bean/Song;

    check-cast p2, Lcom/videooperate/bean/Song;

    invoke-virtual {p0, p1, p2}, Lcom/videooperate/service/ScanLocationService$FileComparatorOnSize;->compare(Lcom/videooperate/bean/Song;Lcom/videooperate/bean/Song;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method
