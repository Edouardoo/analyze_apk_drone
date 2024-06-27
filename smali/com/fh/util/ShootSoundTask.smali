.class public Lcom/fh/util/ShootSoundTask;
.super Landroid/os/AsyncTask;
.source "ShootSoundTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private shootMP:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/fh/util/ShootSoundTask;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fh/util/ShootSoundTask;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 42
    iget-object v2, p0, Lcom/fh/util/ShootSoundTask;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 43
    .local v0, "meng":Landroid/media/AudioManager;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 45
    .local v1, "volume":I
    if-eqz v1, :cond_1

    .line 46
    iget-object v2, p0, Lcom/fh/util/ShootSoundTask;->shootMP:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/fh/util/ShootSoundTask;->mContext:Landroid/content/Context;

    const-string v3, "file:///system/media/audio/ui/camera_click.ogg"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/fh/util/ShootSoundTask;->shootMP:Landroid/media/MediaPlayer;

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/fh/util/ShootSoundTask;->shootMP:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/fh/util/ShootSoundTask;->shootMP:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 52
    :cond_1
    const-string v2, "52gggg"

    const-string v3, "doInBackground: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/fh/util/ShootSoundTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/Boolean;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/fh/util/ShootSoundTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
