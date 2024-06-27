.class public Lcom/fh/lib/Define$Record;
.super Ljava/lang/Object;
.source "Define.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/lib/Define;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Record"
.end annotation


# instance fields
.field public chanID:I

.field public dataSize:J

.field public lockFlag:I

.field public recType:I

.field public startTime:J

.field public stopTime:J

.field final synthetic this$0:Lcom/fh/lib/Define;


# direct methods
.method public constructor <init>(Lcom/fh/lib/Define;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/lib/Define;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/fh/lib/Define$Record;->this$0:Lcom/fh/lib/Define;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
