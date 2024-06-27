.class Lcom/fh/lib/SDLJoystickHandler_API12;
.super Lcom/fh/lib/SDLJoystickHandler;
.source "SDLActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fh/lib/SDLJoystickHandler_API12$RangeComparator;,
        Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;
    }
.end annotation


# instance fields
.field private mJoysticks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/fh/lib/SDLJoystickHandler;-><init>()V

    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    .line 829
    return-void
.end method


# virtual methods
.method protected getJoystick(I)Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;
    .locals 2
    .param p1, "device_id"    # I

    .prologue
    .line 897
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 898
    iget-object v1, p0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;

    iget v1, v1, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    if-ne v1, p1, :cond_0

    .line 899
    iget-object v1, p0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;

    .line 902
    :goto_1
    return-object v1

    .line 897
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 907
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    const v9, 0x1000010

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    .line 908
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 909
    .local v1, "actionPointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 910
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 933
    .end local v0    # "action":I
    .end local v1    # "actionPointerIndex":I
    :cond_0
    const/4 v8, 0x1

    return v8

    .line 912
    .restart local v0    # "action":I
    .restart local v1    # "actionPointerIndex":I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/fh/lib/SDLJoystickHandler_API12;->getJoystick(I)Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;

    move-result-object v5

    .line 913
    .local v5, "joystick":Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;
    if-eqz v5, :cond_0

    .line 914
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v8, v5, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 915
    iget-object v8, v5, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InputDevice$MotionRange;

    .line 917
    .local v6, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v8

    invoke-virtual {p1, v8, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v9

    sub-float/2addr v8, v9

    .line 918
    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v9

    div-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v7, v8, v9

    .line 919
    .local v7, "value":F
    iget v8, v5, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    invoke-static {v8, v4, v7}, Lcom/fh/lib/SDLActivity;->onNativeJoy(IIF)V

    .line 914
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 921
    .end local v6    # "range":Landroid/view/InputDevice$MotionRange;
    .end local v7    # "value":F
    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v8, v5, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 922
    iget-object v8, v5, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v8

    invoke-virtual {p1, v8, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 923
    .local v2, "hatX":I
    iget-object v8, v5, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    add-int/lit8 v9, v4, 0x1

    .line 924
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v8

    invoke-virtual {p1, v8, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 925
    .local v3, "hatY":I
    iget v8, v5, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    div-int/lit8 v9, v4, 0x2

    invoke-static {v8, v9, v2, v3}, Lcom/fh/lib/SDLActivity;->onNativeHat(IIII)V

    .line 921
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 910
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public pollInputDevices()V
    .locals 17

    .prologue
    .line 833
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v8

    .line 839
    .local v8, "deviceIds":[I
    array-length v1, v8

    add-int/lit8 v10, v1, -0x1

    .local v10, "i":I
    :goto_0
    const/4 v1, -0x1

    if-le v10, v1, :cond_5

    .line 840
    aget v1, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/fh/lib/SDLJoystickHandler_API12;->getJoystick(I)Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;

    move-result-object v12

    .line 841
    .local v12, "joystick":Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;
    if-nez v12, :cond_4

    .line 842
    new-instance v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;

    .end local v12    # "joystick":Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;
    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;-><init>(Lcom/fh/lib/SDLJoystickHandler_API12;)V

    .line 843
    .restart local v12    # "joystick":Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;
    aget v1, v8, v10

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v13

    .line 844
    .local v13, "joystickDevice":Landroid/view/InputDevice;
    invoke-virtual {v13}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 845
    aget v1, v8, v10

    iput v1, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    .line 846
    invoke-virtual {v13}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->name:Ljava/lang/String;

    .line 847
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    .line 848
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    .line 850
    invoke-virtual {v13}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v15

    .line 851
    .local v15, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    new-instance v1, Lcom/fh/lib/SDLJoystickHandler_API12$RangeComparator;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/fh/lib/SDLJoystickHandler_API12$RangeComparator;-><init>(Lcom/fh/lib/SDLJoystickHandler_API12;)V

    invoke-static {v15, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 852
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/InputDevice$MotionRange;

    .line 853
    .local v14, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v14}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    .line 854
    invoke-virtual {v14}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_1

    .line 855
    invoke-virtual {v14}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 856
    :cond_1
    iget-object v2, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 858
    :cond_2
    iget-object v2, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 863
    .end local v14    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    iget v1, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    iget-object v2, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->name:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v5, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    .line 865
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    .line 864
    invoke-static/range {v1 .. v7}, Lcom/fh/lib/SDLActivity;->nativeAddJoystick(ILjava/lang/String;IIIII)I

    .line 839
    .end local v13    # "joystickDevice":Landroid/view/InputDevice;
    .end local v15    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_0

    .line 871
    .end local v12    # "joystick":Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;
    :cond_5
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v16, "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_9

    .line 873
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;

    iget v9, v1, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    .line 875
    .local v9, "device_id":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    array-length v1, v8

    if-ge v11, v1, :cond_6

    .line 876
    aget v1, v8, v11

    if-ne v9, v1, :cond_8

    .line 879
    :cond_6
    array-length v1, v8

    if-ne v11, v1, :cond_7

    .line 880
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 875
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 884
    .end local v9    # "device_id":I
    .end local v11    # "j":I
    :cond_9
    const/4 v10, 0x0

    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_c

    .line 885
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 886
    .restart local v9    # "device_id":I
    invoke-static {v9}, Lcom/fh/lib/SDLActivity;->nativeRemoveJoystick(I)I

    .line 887
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_a

    .line 888
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;

    iget v1, v1, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    if-ne v1, v9, :cond_b

    .line 889
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 884
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 887
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 894
    .end local v9    # "device_id":I
    .end local v11    # "j":I
    :cond_c
    return-void
.end method
