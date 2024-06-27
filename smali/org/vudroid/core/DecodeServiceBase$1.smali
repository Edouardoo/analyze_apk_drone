.class Lorg/vudroid/core/DecodeServiceBase$1;
.super Ljava/lang/Object;
.source "DecodeServiceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/vudroid/core/DecodeServiceBase;->decodePage(Ljava/lang/Object;ILorg/vudroid/core/DecodeService$DecodeCallback;FLandroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/vudroid/core/DecodeServiceBase;

.field final synthetic val$decodeTask:Lorg/vudroid/core/DecodeServiceBase$DecodeTask;


# direct methods
.method constructor <init>(Lorg/vudroid/core/DecodeServiceBase;Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)V
    .locals 0
    .param p1, "this$0"    # Lorg/vudroid/core/DecodeServiceBase;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/vudroid/core/DecodeServiceBase$1;->this$0:Lorg/vudroid/core/DecodeServiceBase;

    iput-object p2, p0, Lorg/vudroid/core/DecodeServiceBase$1;->val$decodeTask:Lorg/vudroid/core/DecodeServiceBase$DecodeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 76
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 77
    iget-object v1, p0, Lorg/vudroid/core/DecodeServiceBase$1;->this$0:Lorg/vudroid/core/DecodeServiceBase;

    iget-object v2, p0, Lorg/vudroid/core/DecodeServiceBase$1;->val$decodeTask:Lorg/vudroid/core/DecodeServiceBase$DecodeTask;

    invoke-static {v1, v2}, Lorg/vudroid/core/DecodeServiceBase;->access$100(Lorg/vudroid/core/DecodeServiceBase;Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ViewDroidDecodeService"

    const-string v2, "Decode fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
