.class Lcom/lzy/okhttputils/request/BaseRequest$1$1;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okhttputils/request/BaseRequest$1;->onRequestProgress(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzy/okhttputils/request/BaseRequest$1;

.field final synthetic val$bytesWritten:J

.field final synthetic val$contentLength:J

.field final synthetic val$networkSpeed:J


# direct methods
.method constructor <init>(Lcom/lzy/okhttputils/request/BaseRequest$1;JJJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/lzy/okhttputils/request/BaseRequest$1;

    .prologue
    .line 363
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest$1$1;, "Lcom/lzy/okhttputils/request/BaseRequest$1$1;"
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest$1$1;->this$1:Lcom/lzy/okhttputils/request/BaseRequest$1;

    iput-wide p2, p0, Lcom/lzy/okhttputils/request/BaseRequest$1$1;->val$bytesWritten:J

    iput-wide p4, p0, Lcom/lzy/okhttputils/request/BaseRequest$1$1;->val$contentLength:J

    iput-wide p6, p0, Lcom/lzy/okhttputils/request/BaseRequest$1$1;->val$networkSpeed:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 366
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest$1$1;, "Lcom/lzy/okhttputils/request/BaseRequest$1$1;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$1$1;->this$1:Lcom/lzy/okhttputils/request/BaseRequest$1;

    iget-object v0, v0, Lcom/lzy/okhttputils/request/BaseRequest$1;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    invoke-static {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$1$1;->this$1:Lcom/lzy/okhttputils/request/BaseRequest$1;

    iget-object v0, v0, Lcom/lzy/okhttputils/request/BaseRequest$1;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    invoke-static {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest$1$1;->val$bytesWritten:J

    iget-wide v4, p0, Lcom/lzy/okhttputils/request/BaseRequest$1$1;->val$contentLength:J

    iget-wide v6, p0, Lcom/lzy/okhttputils/request/BaseRequest$1$1;->val$bytesWritten:J

    long-to-float v0, v6

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v0, v6

    iget-wide v6, p0, Lcom/lzy/okhttputils/request/BaseRequest$1$1;->val$contentLength:J

    long-to-float v6, v6

    div-float v6, v0, v6

    iget-wide v7, p0, Lcom/lzy/okhttputils/request/BaseRequest$1$1;->val$networkSpeed:J

    invoke-virtual/range {v1 .. v8}, Lcom/lzy/okhttputils/callback/AbsCallback;->upProgress(JJFJ)V

    .line 367
    :cond_0
    return-void
.end method
