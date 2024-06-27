.class Lcom/hfufo/widget/MotionView$1;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
    .line 126
    iput-object p1, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 161
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 129
    invoke-static {}, Lcom/fh/util/Common;->isManualmode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 133
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    invoke-static {v0}, Lcom/hfufo/widget/MotionView;->access$000(Lcom/hfufo/widget/MotionView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    invoke-static {v0}, Lcom/hfufo/widget/MotionView;->access$100(Lcom/hfufo/widget/MotionView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    iget-object v1, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/hfufo/widget/MotionView;->access$300(Lcom/hfufo/widget/MotionView;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/MotionView;->access$202(Lcom/hfufo/widget/MotionView;F)F

    .line 135
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    iget-object v1, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    invoke-static {v1, v2}, Lcom/hfufo/widget/MotionView;->access$500(Lcom/hfufo/widget/MotionView;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/MotionView;->access$402(Lcom/hfufo/widget/MotionView;F)F

    .line 137
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    invoke-static {v0}, Lcom/hfufo/widget/MotionView;->access$600(Lcom/hfufo/widget/MotionView;)V

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    invoke-static {v0}, Lcom/hfufo/widget/MotionView;->access$000(Lcom/hfufo/widget/MotionView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    invoke-static {v0}, Lcom/hfufo/widget/MotionView;->access$100(Lcom/hfufo/widget/MotionView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Lcom/hfufo/widget/MotionView;->access$700(Lcom/hfufo/widget/MotionView;[F)V

    .line 142
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    iget-object v1, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/hfufo/widget/MotionView;->access$300(Lcom/hfufo/widget/MotionView;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/MotionView;->access$202(Lcom/hfufo/widget/MotionView;F)F

    .line 143
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    iget-object v1, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    invoke-static {v1, v2}, Lcom/hfufo/widget/MotionView;->access$500(Lcom/hfufo/widget/MotionView;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/MotionView;->access$402(Lcom/hfufo/widget/MotionView;F)F

    .line 144
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    invoke-static {v0}, Lcom/hfufo/widget/MotionView;->access$600(Lcom/hfufo/widget/MotionView;)V

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v1, v0, Lcom/hfufo/widget/MotionView;->accelerometerValues:[F

    .line 149
    :cond_4
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v1, v0, Lcom/hfufo/widget/MotionView;->magneticFieldValues:[F

    .line 152
    iget-object v0, p0, Lcom/hfufo/widget/MotionView$1;->this$0:Lcom/hfufo/widget/MotionView;

    invoke-static {v0}, Lcom/hfufo/widget/MotionView;->access$800(Lcom/hfufo/widget/MotionView;)V

    goto/16 :goto_0
.end method
