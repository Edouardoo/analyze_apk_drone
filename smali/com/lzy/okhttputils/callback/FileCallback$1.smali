.class Lcom/lzy/okhttputils/callback/FileCallback$1;
.super Ljava/lang/Object;
.source "FileCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okhttputils/callback/FileCallback;->saveFile(Lokhttp3/Response;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okhttputils/callback/FileCallback;

.field final synthetic val$finalSum:J

.field final synthetic val$networkSpeed:J

.field final synthetic val$total:J


# direct methods
.method constructor <init>(Lcom/lzy/okhttputils/callback/FileCallback;JJJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/lzy/okhttputils/callback/FileCallback;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lzy/okhttputils/callback/FileCallback$1;->this$0:Lcom/lzy/okhttputils/callback/FileCallback;

    iput-wide p2, p0, Lcom/lzy/okhttputils/callback/FileCallback$1;->val$finalSum:J

    iput-wide p4, p0, Lcom/lzy/okhttputils/callback/FileCallback$1;->val$total:J

    iput-wide p6, p0, Lcom/lzy/okhttputils/callback/FileCallback$1;->val$networkSpeed:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 90
    iget-object v1, p0, Lcom/lzy/okhttputils/callback/FileCallback$1;->this$0:Lcom/lzy/okhttputils/callback/FileCallback;

    iget-wide v2, p0, Lcom/lzy/okhttputils/callback/FileCallback$1;->val$finalSum:J

    iget-wide v4, p0, Lcom/lzy/okhttputils/callback/FileCallback$1;->val$total:J

    iget-wide v6, p0, Lcom/lzy/okhttputils/callback/FileCallback$1;->val$finalSum:J

    long-to-float v0, v6

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v0, v6

    iget-wide v6, p0, Lcom/lzy/okhttputils/callback/FileCallback$1;->val$total:J

    long-to-float v6, v6

    div-float v6, v0, v6

    iget-wide v7, p0, Lcom/lzy/okhttputils/callback/FileCallback$1;->val$networkSpeed:J

    invoke-virtual/range {v1 .. v8}, Lcom/lzy/okhttputils/callback/FileCallback;->downloadProgress(JJFJ)V

    .line 91
    return-void
.end method
