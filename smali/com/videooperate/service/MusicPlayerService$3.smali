.class Lcom/videooperate/service/MusicPlayerService$3;
.super Ljava/lang/Object;
.source "MusicPlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/service/MusicPlayerService;->initPlayerEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/service/MusicPlayerService;


# direct methods
.method constructor <init>(Lcom/videooperate/service/MusicPlayerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/service/MusicPlayerService;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/videooperate/service/MusicPlayerService$3;->this$0:Lcom/videooperate/service/MusicPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService$3;->this$0:Lcom/videooperate/service/MusicPlayerService;

    invoke-static {v0}, Lcom/videooperate/service/MusicPlayerService;->access$000(Lcom/videooperate/service/MusicPlayerService;)V

    .line 96
    const/4 v0, 0x0

    return v0
.end method
