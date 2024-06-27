.class Lcom/hfufo/widget/ManualView$2;
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
    .line 162
    iput-object p1, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSteeringWheelChanged(ILandroid/graphics/Point;)V
    .locals 10
    .param p1, "action"    # I
    .param p2, "rockerPosition"    # Landroid/graphics/Point;

    .prologue
    const/16 v9, 0x100

    const/4 v8, -0x1

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    .line 167
    const-string v0, "rightRudder\u7684\u4f4d\u7f6e"

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

    .line 171
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0}, Lcom/hfufo/widget/ManualView;->access$000(Lcom/hfufo/widget/ManualView;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/ManualView;->access$302(Lcom/hfufo/widget/ManualView;B)B

    .line 173
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0}, Lcom/hfufo/widget/ManualView;->access$400(Lcom/hfufo/widget/ManualView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, p2, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, -0x5a

    int-to-double v2, v1

    const-wide/high16 v4, 0x4043000000000000L    # 38.0

    div-double/2addr v2, v4

    mul-double/2addr v2, v6

    double-to-int v1, v2

    iput v1, v0, Lcom/hfufo/widget/ManualView;->j:I

    .line 176
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    iget v0, v0, Lcom/hfufo/widget/ManualView;->j:I

    if-ne v0, v9, :cond_4

    .line 177
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0, v8}, Lcom/hfufo/widget/ManualView;->access$502(Lcom/hfufo/widget/ManualView;B)B

    .line 183
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0}, Lcom/hfufo/widget/ManualView;->access$400(Lcom/hfufo/widget/ManualView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, p2, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, -0x32

    int-to-double v2, v1

    const-wide v4, 0x4053800000000000L    # 78.0

    div-double/2addr v2, v4

    mul-double/2addr v2, v6

    double-to-int v1, v2

    iput v1, v0, Lcom/hfufo/widget/ManualView;->j:I

    .line 186
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    iget v0, v0, Lcom/hfufo/widget/ManualView;->j:I

    if-ne v0, v9, :cond_5

    .line 187
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0, v8}, Lcom/hfufo/widget/ManualView;->access$502(Lcom/hfufo/widget/ManualView;B)B

    .line 192
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0}, Lcom/hfufo/widget/ManualView;->access$400(Lcom/hfufo/widget/ManualView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 193
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/ManualView;->access$502(Lcom/hfufo/widget/ManualView;B)B

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0}, Lcom/hfufo/widget/ManualView;->access$600(Lcom/hfufo/widget/ManualView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/ManualView;->access$502(Lcom/hfufo/widget/ManualView;B)B

    .line 208
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0}, Lcom/hfufo/widget/ManualView;->access$700(Lcom/hfufo/widget/ManualView;)V

    .line 210
    return-void

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    iget-object v1, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, v1, Lcom/hfufo/widget/ManualView;->j:I

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/ManualView;->access$502(Lcom/hfufo/widget/ManualView;B)B

    goto :goto_0

    .line 189
    :cond_5
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    iget-object v1, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, v1, Lcom/hfufo/widget/ManualView;->j:I

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/ManualView;->access$502(Lcom/hfufo/widget/ManualView;B)B

    goto :goto_1

    .line 199
    :cond_6
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/ManualView;->access$102(Lcom/hfufo/widget/ManualView;B)B

    .line 200
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/ManualView;->access$202(Lcom/hfufo/widget/ManualView;B)B

    goto :goto_2
.end method

.method public onTouch(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 214
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$2;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0, p1}, Lcom/hfufo/widget/ManualView;->access$902(Lcom/hfufo/widget/ManualView;Z)Z

    .line 215
    return-void
.end method
