.class Lio/microshow/rxffmpeg/EpEditor$3;
.super Ljava/lang/Object;
.source "EpEditor.java"

# interfaces
.implements Lio/microshow/rxffmpeg/OnEditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/microshow/rxffmpeg/EpEditor;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/microshow/rxffmpeg/EpEditor;


# direct methods
.method constructor <init>(Lio/microshow/rxffmpeg/EpEditor;)V
    .locals 0
    .param p1, "this$0"    # Lio/microshow/rxffmpeg/EpEditor;

    .prologue
    .line 972
    iput-object p1, p0, Lio/microshow/rxffmpeg/EpEditor$3;->this$0:Lio/microshow/rxffmpeg/EpEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 981
    return-void
.end method

.method public onProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 986
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 976
    return-void
.end method
