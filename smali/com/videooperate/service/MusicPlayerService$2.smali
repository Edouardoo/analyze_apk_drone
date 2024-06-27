.class Lcom/videooperate/service/MusicPlayerService$2;
.super Ljava/lang/Object;
.source "MusicPlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 84
    iput-object p1, p0, Lcom/videooperate/service/MusicPlayerService$2;->this$0:Lcom/videooperate/service/MusicPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 88
    return-void
.end method
