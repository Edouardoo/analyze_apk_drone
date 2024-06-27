.class Lcom/hfufo/widget/MotionView$2;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Lcom/fh/listener/RudderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/MotionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/MotionView;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/MotionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/MotionView;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/hfufo/widget/MotionView$2;->this$0:Lcom/hfufo/widget/MotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSteeringWheelChanged(ILandroid/graphics/Point;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "rockerPosition"    # Landroid/graphics/Point;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$2;->this$0:Lcom/hfufo/widget/MotionView;

    iget v1, p2, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1}, Lcom/hfufo/widget/MotionView;->access$902(Lcom/hfufo/widget/MotionView;I)I

    .line 494
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$2;->this$0:Lcom/hfufo/widget/MotionView;

    iget v1, p2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Lcom/hfufo/widget/MotionView;->access$1002(Lcom/hfufo/widget/MotionView;I)I

    .line 495
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$2;->this$0:Lcom/hfufo/widget/MotionView;

    iget-object v1, p0, Lcom/hfufo/widget/MotionView$2;->this$0:Lcom/hfufo/widget/MotionView;

    invoke-static {v1}, Lcom/hfufo/widget/MotionView;->access$900(Lcom/hfufo/widget/MotionView;)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/MotionView;->access$1102(Lcom/hfufo/widget/MotionView;B)B

    .line 496
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$2;->this$0:Lcom/hfufo/widget/MotionView;

    iget-object v1, p0, Lcom/hfufo/widget/MotionView$2;->this$0:Lcom/hfufo/widget/MotionView;

    invoke-static {v1}, Lcom/hfufo/widget/MotionView;->access$1000(Lcom/hfufo/widget/MotionView;)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/MotionView;->access$1202(Lcom/hfufo/widget/MotionView;B)B

    .line 497
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$2;->this$0:Lcom/hfufo/widget/MotionView;

    invoke-static {v0}, Lcom/hfufo/widget/MotionView;->access$1300(Lcom/hfufo/widget/MotionView;)V

    .line 498
    return-void
.end method

.method public onTouch(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 503
    return-void
.end method
