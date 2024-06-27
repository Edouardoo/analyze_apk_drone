.class Lcom/hfufo/widget/ManualView$1;
.super Ljava/lang/Object;
.source "ManualView.java"

# interfaces
.implements Lcom/fh/listener/RudderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/ManualView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/ManualView;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/ManualView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/ManualView;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSteeringWheelChanged(ILandroid/graphics/Point;)V
    .locals 11
    .param p1, "action"    # I
    .param p2, "rockerPosition"    # Landroid/graphics/Point;

    .prologue
    const/4 v10, -0x1

    const-wide v8, 0x4053800000000000L    # 78.0

    const-wide/high16 v6, 0x4043000000000000L    # 38.0

    const-wide/high16 v4, 0x4060000000000000L    # 128.0

    .line 89
    const-string v0, "leftRudder\u7684\u4f4d\u7f6e"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "y\u7684\u503c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0}, Lcom/hfufo/widget/ManualView;->access$000(Lcom/hfufo/widget/ManualView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/ManualView;->access$102(Lcom/hfufo/widget/ManualView;B)B

    .line 93
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/ManualView;->access$202(Lcom/hfufo/widget/ManualView;B)B

    .line 152
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0}, Lcom/hfufo/widget/ManualView;->access$700(Lcom/hfufo/widget/ManualView;)V

    .line 154
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/ManualView;->access$302(Lcom/hfufo/widget/ManualView;B)B

    .line 119
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0}, Lcom/hfufo/widget/ManualView;->access$400(Lcom/hfufo/widget/ManualView;)I

    move-result v0

    if-nez v0, :cond_2

    .line 120
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u901f\u5ea6\u4e3a0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, -0x5a

    int-to-double v2, v2

    div-double/2addr v2, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, p2, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, -0x5a

    int-to-double v2, v1

    div-double/2addr v2, v6

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Lcom/hfufo/widget/ManualView;->j:I

    .line 122
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    iget v0, v0, Lcom/hfufo/widget/ManualView;->j:I

    const/16 v1, 0xff

    if-le v0, v1, :cond_5

    .line 123
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0, v10}, Lcom/hfufo/widget/ManualView;->access$502(Lcom/hfufo/widget/ManualView;B)B

    .line 129
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0}, Lcom/hfufo/widget/ManualView;->access$400(Lcom/hfufo/widget/ManualView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 130
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u901f\u5ea6\u4e3a1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, -0x32

    int-to-double v2, v2

    div-double/2addr v2, v8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, p2, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, -0x32

    int-to-double v2, v1

    div-double/2addr v2, v8

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Lcom/hfufo/widget/ManualView;->j:I

    .line 132
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    iget v0, v0, Lcom/hfufo/widget/ManualView;->j:I

    const/16 v1, 0x100

    if-lt v0, v1, :cond_6

    .line 133
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0, v10}, Lcom/hfufo/widget/ManualView;->access$502(Lcom/hfufo/widget/ManualView;B)B

    .line 138
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0}, Lcom/hfufo/widget/ManualView;->access$400(Lcom/hfufo/widget/ManualView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 139
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/ManualView;->access$502(Lcom/hfufo/widget/ManualView;B)B

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0}, Lcom/hfufo/widget/ManualView;->access$600(Lcom/hfufo/widget/ManualView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/ManualView;->access$502(Lcom/hfufo/widget/ManualView;B)B

    goto/16 :goto_0

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    iget-object v1, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, v1, Lcom/hfufo/widget/ManualView;->j:I

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/ManualView;->access$502(Lcom/hfufo/widget/ManualView;B)B

    goto :goto_1

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    iget-object v1, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, v1, Lcom/hfufo/widget/ManualView;->j:I

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/ManualView;->access$502(Lcom/hfufo/widget/ManualView;B)B

    goto :goto_2
.end method

.method public onTouch(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$1;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0, p1}, Lcom/hfufo/widget/ManualView;->access$802(Lcom/hfufo/widget/ManualView;Z)Z

    .line 159
    return-void
.end method
