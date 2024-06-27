.class Lcom/videooperate/service/MusicPlayerService$1;
.super Ljava/lang/Object;
.source "MusicPlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 77
    iput-object p1, p0, Lcom/videooperate/service/MusicPlayerService$1;->this$0:Lcom/videooperate/service/MusicPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService$1;->this$0:Lcom/videooperate/service/MusicPlayerService;

    iget-object v0, v0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 82
    return-void
.end method
