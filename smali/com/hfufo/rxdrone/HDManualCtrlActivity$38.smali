.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$38;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/fh/listener/RudderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hideRockerInit()V
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
    .line 5446
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$38;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSteeringWheelChanged(ILandroid/graphics/Point;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "rockerPosition"    # Landroid/graphics/Point;

    .prologue
    const/16 v1, 0x80

    .line 5452
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$38;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0}, Lcom/hfufo/widget/RockerBgView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5453
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$38;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5454
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$38;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    .line 5455
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$38;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 5471
    :cond_0
    :goto_0
    return-void

    .line 5459
    :cond_1
    iget v0, p2, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_2

    .line 5460
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$38;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 5467
    :goto_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$38;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel4(B)V

    goto :goto_0

    .line 5461
    :cond_2
    iget v0, p2, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_3

    .line 5462
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$38;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    goto :goto_1

    .line 5464
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$38;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    const/16 v1, -0x80

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    goto :goto_1
.end method

.method public onTouch(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 5476
    return-void
.end method
