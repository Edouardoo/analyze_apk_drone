.class Lio/microshow/rxffmpeg/EpEditor$2;
.super Ljava/lang/Object;
.source "EpEditor.java"

# interfaces
.implements Lio/microshow/rxffmpeg/OnEditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/microshow/rxffmpeg/EpEditor;->execCmd(Lio/microshow/rxffmpeg/CmdList;JLio/microshow/rxffmpeg/OnEditorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/microshow/rxffmpeg/EpEditor;

.field final synthetic val$onEditorListener:Lio/microshow/rxffmpeg/OnEditorListener;


# direct methods
.method constructor <init>(Lio/microshow/rxffmpeg/EpEditor;Lio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 0
    .param p1, "this$0"    # Lio/microshow/rxffmpeg/EpEditor;

    .prologue
    .line 866
    iput-object p1, p0, Lio/microshow/rxffmpeg/EpEditor$2;->this$0:Lio/microshow/rxffmpeg/EpEditor;

    iput-object p2, p0, Lio/microshow/rxffmpeg/EpEditor$2;->val$onEditorListener:Lio/microshow/rxffmpeg/OnEditorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "messgae"    # Ljava/lang/String;

    .prologue
    .line 874
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpEditor$2;->val$onEditorListener:Lio/microshow/rxffmpeg/OnEditorListener;

    invoke-interface {v0, p1}, Lio/microshow/rxffmpeg/OnEditorListener;->onFailure(Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public onProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 879
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpEditor$2;->val$onEditorListener:Lio/microshow/rxffmpeg/OnEditorListener;

    invoke-interface {v0, p1}, Lio/microshow/rxffmpeg/OnEditorListener;->onProgress(F)V

    .line 880
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lio/microshow/rxffmpeg/EpEditor$2;->val$onEditorListener:Lio/microshow/rxffmpeg/OnEditorListener;

    invoke-interface {v0}, Lio/microshow/rxffmpeg/OnEditorListener;->onSuccess()V

    .line 870
    return-void
.end method
