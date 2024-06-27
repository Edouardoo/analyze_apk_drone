.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$12;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/hfufo/widget/AvcEncoder$H264CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startDecode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 1749
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 0

    .prologue
    .line 1777
    return-void
.end method

.method public onFrame([B)V
    .locals 3
    .param p1, "keyframe"    # [B

    .prologue
    .line 1752
    const-class v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    monitor-enter v1

    .line 1753
    :try_start_0
    const-string v0, "MeidaDecodec"

    const-string v2, "yuvI420ToNV21"

    invoke-static {v0, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iput-object p1, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420:[B

    .line 1759
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$12;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 1761
    monitor-exit v1

    .line 1762
    return-void

    .line 1761
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRate()V
    .locals 0

    .prologue
    .line 1767
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "outpath"    # Ljava/lang/String;

    .prologue
    .line 1772
    return-void
.end method
