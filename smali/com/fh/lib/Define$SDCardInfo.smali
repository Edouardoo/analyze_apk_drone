.class public Lcom/fh/lib/Define$SDCardInfo;
.super Ljava/lang/Object;
.source "Define.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/lib/Define;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SDCardInfo"
.end annotation


# instance fields
.field public state:B

.field final synthetic this$0:Lcom/fh/lib/Define;

.field public totalSize:J

.field public usedSize:J


# direct methods
.method public constructor <init>(Lcom/fh/lib/Define;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/lib/Define;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/fh/lib/Define$SDCardInfo;->this$0:Lcom/fh/lib/Define;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
