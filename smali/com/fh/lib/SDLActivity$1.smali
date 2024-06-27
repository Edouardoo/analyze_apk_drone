.class Lcom/fh/lib/SDLActivity$1;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fh/lib/SDLActivity;->getSystemServiceFromUiThread(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fh/lib/SDLActivity;

.field final synthetic val$lock:Ljava/lang/Object;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$results:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/fh/lib/SDLActivity;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/lib/SDLActivity;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/fh/lib/SDLActivity$1;->this$0:Lcom/fh/lib/SDLActivity;

    iput-object p2, p0, Lcom/fh/lib/SDLActivity$1;->val$lock:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fh/lib/SDLActivity$1;->val$results:[Ljava/lang/Object;

    iput-object p4, p0, Lcom/fh/lib/SDLActivity$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 350
    iget-object v1, p0, Lcom/fh/lib/SDLActivity$1;->val$lock:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/fh/lib/SDLActivity$1;->val$results:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fh/lib/SDLActivity$1;->this$0:Lcom/fh/lib/SDLActivity;

    iget-object v4, p0, Lcom/fh/lib/SDLActivity$1;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fh/lib/SDLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 352
    iget-object v0, p0, Lcom/fh/lib/SDLActivity$1;->val$results:[Ljava/lang/Object;

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v0, v2

    .line 353
    iget-object v0, p0, Lcom/fh/lib/SDLActivity$1;->val$lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 354
    monitor-exit v1

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
