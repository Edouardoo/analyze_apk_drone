.class Lcom/hfufo/rxdrone/ManualCtrlActivity$53;
.super Ljava/lang/Thread;
.source "ManualCtrlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;->LongTouchSendCmd(Landroid/app/Activity;ILandroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

.field final synthetic val$c:I


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 5156
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iput p2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->val$c:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x80

    .line 5158
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 5159
    :goto_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$15300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5160
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$15400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v1

    if-ne v1, v5, :cond_0

    .line 5164
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->val$c:I

    .line 5165
    .local v0, "cmd":I
    packed-switch v0, :pswitch_data_0

    .line 5210
    :goto_1
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 5167
    :pswitch_0
    const-string v1, "PreviewActivityTAG"

    const-string v2, "\u53d1\u90010"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5168
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$15500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    goto :goto_1

    .line 5172
    :pswitch_1
    const-string v1, "PreviewActivityTAG"

    const-string v2, "\u53d1\u90011"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5173
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$15600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    goto :goto_1

    .line 5177
    :pswitch_2
    const-string v1, "PreviewActivityTAG"

    const-string v2, "\u53d1\u90012"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5178
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$15600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    goto :goto_1

    .line 5182
    :pswitch_3
    const-string v1, "PreviewActivityTAG"

    const-string v2, "\u53d1\u90013"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5183
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$15500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    goto :goto_1

    .line 5187
    :pswitch_4
    const-string v1, "PreviewActivityTAG"

    const-string v2, "\u53d1\u90014"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5188
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$15500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    goto :goto_1

    .line 5192
    :pswitch_5
    const-string v1, "PreviewActivityTAG"

    const-string v2, "\u53d1\u90015"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5193
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$15600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    goto/16 :goto_1

    .line 5197
    :pswitch_6
    const-string v1, "PreviewActivityTAG"

    const-string v2, "\u53d1\u90016"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5198
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1, v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10302(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    goto/16 :goto_1

    .line 5202
    :pswitch_7
    const-string v1, "PreviewActivityTAG"

    const-string v2, "\u53d1\u90017"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5214
    .end local v0    # "cmd":I
    :cond_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10302(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 5215
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5216
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/ManualView;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/ManualView;->setLeftRudderPoint(Landroid/graphics/Point;)V

    .line 5224
    :cond_1
    :goto_2
    return-void

    .line 5219
    :cond_2
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/ManualView;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/ManualView;->setRightRudderPoint(Landroid/graphics/Point;)V

    goto :goto_2

    .line 5165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
