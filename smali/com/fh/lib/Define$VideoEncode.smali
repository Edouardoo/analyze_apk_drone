.class public Lcom/fh/lib/Define$VideoEncode;
.super Ljava/lang/Object;
.source "Define.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/lib/Define;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoEncode"
.end annotation


# instance fields
.field public ctrlType:I

.field public deinter:I

.field public denoise:I

.field public iFrameInterval:I

.field public maxBitRate:I

.field public maxFRate:I

.field public quality:I

.field public res:I

.field final synthetic this$0:Lcom/fh/lib/Define;


# direct methods
.method public constructor <init>(Lcom/fh/lib/Define;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/lib/Define;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/fh/lib/Define$VideoEncode;->this$0:Lcom/fh/lib/Define;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
