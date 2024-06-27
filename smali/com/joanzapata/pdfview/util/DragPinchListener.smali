.class public Lcom/joanzapata/pdfview/util/DragPinchListener;
.super Ljava/lang/Object;
.source "DragPinchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joanzapata/pdfview/util/DragPinchListener$State;,
        Lcom/joanzapata/pdfview/util/DragPinchListener$OnDoubleTapListener;,
        Lcom/joanzapata/pdfview/util/DragPinchListener$OnPinchListener;,
        Lcom/joanzapata/pdfview/util/DragPinchListener$OnDragListener;
    }
.end annotation


# static fields
.field private static final MAX_CLICK_DISTANCE:F = 5.0f

.field private static final MAX_CLICK_TIME:J = 0x1f4L

.field private static final MAX_DOUBLE_CLICK_TIME:F = 280.0f

.field private static final POINTER1:I = 0x0

.field private static final POINTER2:I = 0x1


# instance fields
.field private dragLastX:F

.field private dragLastY:F

.field private lastClickTime:J

.field private lastDownX:F

.field private lastDownY:F

.field private onDoubleTapListener:Lcom/joanzapata/pdfview/util/DragPinchListener$OnDoubleTapListener;

.field private onDragListener:Lcom/joanzapata/pdfview/util/DragPinchListener$OnDragListener;

.field private onPinchListener:Lcom/joanzapata/pdfview/util/DragPinchListener$OnPinchListener;

.field private pointer2LastX:F

.field private pointer2LastY:F

.field private state:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

.field private zoomLastDistance:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->NONE:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    iput-object v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->state:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    return-void
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 246
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 245
    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    goto :goto_0
.end method

.method private drag(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 229
    .local v0, "dragCurrentX":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 231
    .local v1, "dragCurrentY":F
    iget-object v2, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->onDragListener:Lcom/joanzapata/pdfview/util/DragPinchListener$OnDragListener;

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->onDragListener:Lcom/joanzapata/pdfview/util/DragPinchListener$OnDragListener;

    iget v3, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->dragLastX:F

    sub-float v3, v0, v3

    iget v4, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->dragLastY:F

    sub-float v4, v1, v4

    invoke-interface {v2, v3, v4}, Lcom/joanzapata/pdfview/util/DragPinchListener$OnDragListener;->onDrag(FF)V

    .line 236
    :cond_0
    iput v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->dragLastX:F

    .line 237
    iput v1, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->dragLastY:F

    .line 238
    return-void
.end method

.method private endDrag()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->onDragListener:Lcom/joanzapata/pdfview/util/DragPinchListener$OnDragListener;

    iget v1, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->dragLastX:F

    iget v2, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->dragLastY:F

    invoke-interface {v0, v1, v2}, Lcom/joanzapata/pdfview/util/DragPinchListener$OnDragListener;->endDrag(FF)V

    .line 204
    return-void
.end method

.method private isClick(Landroid/view/MotionEvent;FFFF)Z
    .locals 8
    .param p1, "upEvent"    # Landroid/view/MotionEvent;
    .param p2, "xDown"    # F
    .param p3, "yDown"    # F
    .param p4, "xUp"    # F
    .param p5, "yUp"    # F

    .prologue
    const/4 v1, 0x0

    .line 260
    if-nez p1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v1

    .line 261
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 262
    .local v2, "time":J
    sub-float v4, p2, p4

    sub-float v5, p3, p5

    invoke-static {v4, v5}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    .line 265
    .local v0, "distance":F
    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const/high16 v4, 0x40a00000    # 5.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->dragLastX:F

    .line 223
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->dragLastY:F

    .line 224
    iget-object v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->onDragListener:Lcom/joanzapata/pdfview/util/DragPinchListener$OnDragListener;

    iget v1, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->dragLastX:F

    iget v2, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->dragLastY:F

    invoke-interface {v0, v1, v2}, Lcom/joanzapata/pdfview/util/DragPinchListener$OnDragListener;->startDrag(FF)V

    .line 225
    return-void
.end method

.method private startZoom(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/joanzapata/pdfview/util/DragPinchListener;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->zoomLastDistance:F

    .line 208
    return-void
.end method

.method private zoom(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 211
    invoke-direct {p0, p1}, Lcom/joanzapata/pdfview/util/DragPinchListener;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    .line 213
    .local v0, "zoomCurrentDistance":F
    iget-object v1, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->onPinchListener:Lcom/joanzapata/pdfview/util/DragPinchListener$OnPinchListener;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->onPinchListener:Lcom/joanzapata/pdfview/util/DragPinchListener$OnPinchListener;

    iget v2, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->zoomLastDistance:F

    div-float v2, v0, v2

    new-instance v3, Landroid/graphics/PointF;

    .line 215
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 214
    invoke-interface {v1, v2, v3}, Lcom/joanzapata/pdfview/util/DragPinchListener$OnPinchListener;->onPinch(FLandroid/graphics/PointF;)V

    .line 218
    :cond_0
    iput v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->zoomLastDistance:F

    .line 219
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 199
    :cond_0
    :goto_0
    return v8

    .line 124
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/joanzapata/pdfview/util/DragPinchListener;->startDrag(Landroid/view/MotionEvent;)V

    .line 125
    sget-object v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->DRAG:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    iput-object v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->state:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->lastDownX:F

    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->lastDownY:F

    goto :goto_0

    .line 132
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/joanzapata/pdfview/util/DragPinchListener;->startDrag(Landroid/view/MotionEvent;)V

    .line 133
    invoke-direct {p0, p2}, Lcom/joanzapata/pdfview/util/DragPinchListener;->startZoom(Landroid/view/MotionEvent;)V

    .line 134
    sget-object v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->ZOOM:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    iput-object v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->state:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    goto :goto_0

    .line 140
    :sswitch_2
    sget-object v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->DRAG:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    iput-object v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->state:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    goto :goto_0

    .line 146
    :sswitch_3
    sget-object v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->NONE:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    iput-object v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->state:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    .line 147
    invoke-direct {p0}, Lcom/joanzapata/pdfview/util/DragPinchListener;->endDrag()V

    .line 150
    iget v2, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->lastDownX:F

    iget v3, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->lastDownY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/joanzapata/pdfview/util/DragPinchListener;->isClick(Landroid/view/MotionEvent;FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 152
    .local v6, "time":J
    iget-wide v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->lastClickTime:J

    sub-long v0, v6, v0

    long-to-float v0, v0

    const/high16 v1, 0x438c0000    # 280.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->onDoubleTapListener:Lcom/joanzapata/pdfview/util/DragPinchListener$OnDoubleTapListener;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->onDoubleTapListener:Lcom/joanzapata/pdfview/util/DragPinchListener$OnDoubleTapListener;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/joanzapata/pdfview/util/DragPinchListener$OnDoubleTapListener;->onDoubleTap(FF)V

    .line 156
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->lastClickTime:J

    goto :goto_0

    .line 158
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->lastClickTime:J

    goto :goto_0

    .line 166
    .end local v6    # "time":J
    :sswitch_4
    iget v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->pointer2LastX:F

    iput v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->dragLastX:F

    .line 167
    iget v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->pointer2LastY:F

    iput v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->dragLastY:F

    .line 168
    sget-object v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->DRAG:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    iput-object v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->state:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    goto :goto_0

    .line 173
    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->pointer2LastX:F

    .line 174
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->pointer2LastY:F

    .line 176
    invoke-direct {p0, p2}, Lcom/joanzapata/pdfview/util/DragPinchListener;->startDrag(Landroid/view/MotionEvent;)V

    .line 177
    invoke-direct {p0, p2}, Lcom/joanzapata/pdfview/util/DragPinchListener;->startZoom(Landroid/view/MotionEvent;)V

    .line 178
    sget-object v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->ZOOM:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    iput-object v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->state:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    goto/16 :goto_0

    .line 184
    :sswitch_6
    sget-object v0, Lcom/joanzapata/pdfview/util/DragPinchListener$1;->$SwitchMap$com$joanzapata$pdfview$util$DragPinchListener$State:[I

    iget-object v1, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->state:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    invoke-virtual {v1}, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 186
    :pswitch_0
    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->pointer2LastX:F

    .line 187
    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->pointer2LastY:F

    .line 188
    invoke-direct {p0, p2}, Lcom/joanzapata/pdfview/util/DragPinchListener;->zoom(Landroid/view/MotionEvent;)V

    .line 191
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/joanzapata/pdfview/util/DragPinchListener;->drag(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0x2 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x105 -> :sswitch_1
        0x106 -> :sswitch_2
    .end sparse-switch

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnDoubleTapListener(Lcom/joanzapata/pdfview/util/DragPinchListener$OnDoubleTapListener;)V
    .locals 0
    .param p1, "onDoubleTapListener"    # Lcom/joanzapata/pdfview/util/DragPinchListener$OnDoubleTapListener;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->onDoubleTapListener:Lcom/joanzapata/pdfview/util/DragPinchListener$OnDoubleTapListener;

    .line 278
    return-void
.end method

.method public setOnDragListener(Lcom/joanzapata/pdfview/util/DragPinchListener$OnDragListener;)V
    .locals 0
    .param p1, "onDragListener"    # Lcom/joanzapata/pdfview/util/DragPinchListener$OnDragListener;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->onDragListener:Lcom/joanzapata/pdfview/util/DragPinchListener$OnDragListener;

    .line 270
    return-void
.end method

.method public setOnPinchListener(Lcom/joanzapata/pdfview/util/DragPinchListener$OnPinchListener;)V
    .locals 0
    .param p1, "onPinchListener"    # Lcom/joanzapata/pdfview/util/DragPinchListener$OnPinchListener;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/joanzapata/pdfview/util/DragPinchListener;->onPinchListener:Lcom/joanzapata/pdfview/util/DragPinchListener$OnPinchListener;

    .line 274
    return-void
.end method
