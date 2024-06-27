.class Lorg/vudroid/core/DocumentView$3;
.super Ljava/lang/Object;
.source "DocumentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/vudroid/core/DocumentView;->showDocument()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/vudroid/core/DocumentView;


# direct methods
.method constructor <init>(Lorg/vudroid/core/DocumentView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/vudroid/core/DocumentView;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/vudroid/core/DocumentView$3;->this$0:Lorg/vudroid/core/DocumentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/vudroid/core/DocumentView$3;->this$0:Lorg/vudroid/core/DocumentView;

    invoke-static {v0}, Lorg/vudroid/core/DocumentView;->access$200(Lorg/vudroid/core/DocumentView;)V

    .line 120
    iget-object v0, p0, Lorg/vudroid/core/DocumentView$3;->this$0:Lorg/vudroid/core/DocumentView;

    invoke-static {v0}, Lorg/vudroid/core/DocumentView;->access$100(Lorg/vudroid/core/DocumentView;)V

    .line 121
    return-void
.end method
