.class Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SaveTask;
.super Landroid/os/AsyncTask;
.source "ZHThinkjoyGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;


# direct methods
.method private constructor <init>(Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SaveTask;->this$0:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;
    .param p2, "x1"    # Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$1;

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SaveTask;-><init>(Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 381
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SaveTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture$SaveTask;->this$0:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    invoke-static {v0}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->access$300(Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;)V

    .line 386
    const/4 v0, 0x0

    return-object v0
.end method
