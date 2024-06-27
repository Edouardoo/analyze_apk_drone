.class Lcom/hfufo/rxdrone/ManualCtrlActivity$14;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;->startDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 2200
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x3e8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2205
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2206
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2211
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mGestureInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2212
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    move-result-object v4

    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v6, v6, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mGestureInfos:Ljava/util/List;

    invoke-virtual {v4, v5, v6}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->gestureDetect(Landroid/graphics/Bitmap;Ljava/util/List;)V

    .line 2215
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mGestureInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 2216
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mGestureInfos:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;

    .line 2217
    .local v1, "info":Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mGestureInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 2218
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mGestureInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;

    .line 2219
    .local v2, "info_":Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;
    const-string v4, "akakak"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v6, v6, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mGestureInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",xy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v6, v6, v10

    iget v6, v6, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v6, v6, v10

    iget v6, v6, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    iget v4, v2, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->type:I

    if-eq v4, v11, :cond_1

    iget v4, v2, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 2221
    :cond_1
    const-string v4, "akakak"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gogo--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2227
    .end local v2    # "info_":Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;
    :cond_3
    iget v4, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->type:I

    packed-switch v4, :pswitch_data_0

    .line 2289
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2299
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    new-instance v5, Lcom/hfufo/rxdrone/ManualCtrlActivity$14$1;

    invoke-direct {v5, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$14$1;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity$14;)V

    invoke-virtual {v4, v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2230
    .restart local v0    # "i":I
    .restart local v1    # "info":Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;
    :pswitch_0
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 2234
    :pswitch_1
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRect:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v5, v5, v10

    iget v5, v5, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    iget-object v6, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v6}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v6, v6, v10

    iget v6, v6, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    iget-object v7, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v7, v7, v11

    iget v7, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v8, v8, v11

    iget v8, v8, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    iget-object v9, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v9}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2235
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2236
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v12}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2237
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4, v10}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3202(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 2238
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2239
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "gesture_takevideo"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2240
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual {v4, v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2243
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2244
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 2245
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2246
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmRect:Landroid/graphics/Rect;

    invoke-static {v4, v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9300(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 2252
    :pswitch_2
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2253
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRect:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v5, v5, v10

    iget v5, v5, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    iget-object v6, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v6}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v6, v6, v10

    iget v6, v6, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    iget-object v7, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v7, v7, v11

    iget v7, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v8, v8, v11

    iget v8, v8, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    iget-object v9, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v9}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2254
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2255
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmRect:Landroid/graphics/Rect;

    invoke-static {v4, v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9300(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 2268
    :pswitch_3
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2274
    :goto_3
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2275
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v12}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2276
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4, v10}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3202(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 2277
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2278
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v4, "gesture_take"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2279
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual {v4, v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2272
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRect:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v5, v5, v10

    iget v5, v5, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    iget-object v6, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v6}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v6, v6, v10

    iget v6, v6, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    iget-object v7, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v7, v7, v11

    iget v7, v7, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v8, v8, v11

    iget v8, v8, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    iget-object v9, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v9}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$7400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 2285
    :pswitch_4
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    .line 2295
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;
    :cond_7
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    .line 2308
    :cond_8
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2310
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    new-instance v5, Lcom/hfufo/rxdrone/ManualCtrlActivity$14$2;

    invoke-direct {v5, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$14$2;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity$14;)V

    invoke-virtual {v4, v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2316
    return-void

    .line 2227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
