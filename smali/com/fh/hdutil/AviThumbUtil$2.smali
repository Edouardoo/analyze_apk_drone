.class final Lcom/fh/hdutil/AviThumbUtil$2;
.super Ljava/lang/Object;
.source "AviThumbUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fh/hdutil/AviThumbUtil;->dispenseOnErrorEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fh/hdutil/AviThumbUtil$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/fh/hdutil/AviThumbUtil;->access$000()Lcom/fh/hdutil/OnAviThumbListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/fh/hdutil/AviThumbUtil;->access$000()Lcom/fh/hdutil/OnAviThumbListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fh/hdutil/AviThumbUtil$2;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/fh/hdutil/OnAviThumbListener;->onError(Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method
