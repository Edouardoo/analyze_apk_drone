.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/task/IGpsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;
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
    .line 8875
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 8922
    return-void
.end method

.method public onGpsResult([B)V
    .locals 10
    .param p1, "buf"    # [B

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8878
    const-string v3, "\u9065\u63a7\u4fe1\u53f7"

    invoke-static {p1}, Lcom/fh/util/Protocol1;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8879
    aget-byte v3, p1, v9

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_0

    .line 8880
    aget-byte v3, p1, v8

    if-ne v3, v6, :cond_3

    .line 8881
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takePhoto(Landroid/view/View;)V

    .line 8892
    :cond_0
    :goto_0
    aget-byte v3, p1, v9

    const/16 v4, 0x66

    if-ne v3, v4, :cond_2

    .line 8893
    aget-byte v3, p1, v6

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_6

    .line 8894
    aget-byte v2, p1, v7

    .line 8895
    .local v2, "v":I
    const/4 v3, 0x3

    aget-byte v1, p1, v3

    .line 8896
    .local v1, "s":I
    const/4 v3, 0x5

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v0

    .line 8897
    .local v0, "mBit":[B
    aget-byte v3, v0, v9

    if-ne v3, v6, :cond_1

    .line 8898
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takePhoto(Landroid/view/View;)V

    .line 8900
    :cond_1
    aget-byte v3, v0, v6

    if-ne v3, v6, :cond_5

    .line 8901
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8902
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takeVideo(Landroid/view/View;)V

    .line 8917
    .end local v0    # "mBit":[B
    .end local v1    # "s":I
    .end local v2    # "v":I
    :cond_2
    :goto_1
    return-void

    .line 8882
    :cond_3
    aget-byte v3, p1, v8

    if-ne v3, v7, :cond_4

    .line 8883
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8884
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takeVideo(Landroid/view/View;)V

    goto :goto_0

    .line 8886
    :cond_4
    aget-byte v3, p1, v8

    if-ne v3, v8, :cond_0

    .line 8887
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8888
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takeVideo(Landroid/view/View;)V

    goto :goto_0

    .line 8905
    .restart local v0    # "mBit":[B
    .restart local v1    # "s":I
    .restart local v2    # "v":I
    :cond_5
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8906
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takeVideo(Landroid/view/View;)V

    goto :goto_1

    .line 8910
    .end local v0    # "mBit":[B
    .end local v1    # "s":I
    .end local v2    # "v":I
    :cond_6
    aget-byte v3, p1, v7

    if-ne v3, v6, :cond_7

    .line 8911
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takePhoto(Landroid/view/View;)V

    goto :goto_1

    .line 8912
    :cond_7
    aget-byte v3, p1, v7

    if-ne v3, v7, :cond_2

    .line 8913
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takeVideo(Landroid/view/View;)V

    goto :goto_1
.end method
