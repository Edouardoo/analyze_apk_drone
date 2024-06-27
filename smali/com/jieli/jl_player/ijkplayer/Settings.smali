.class public Lcom/jieli/jl_player/ijkplayer/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final PV_PLAYER__AndroidMediaPlayer:I = 0x1

.field public static final PV_PLAYER__Auto:I = 0x0

.field public static final PV_PLAYER__IjkExoMediaPlayer:I = 0x3

.field public static final PV_PLAYER__IjkMediaPlayer:I = 0x2


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 38
    return-void
.end method


# virtual methods
.method public getEnableBackgroundPlay()Z
    .locals 3

    .prologue
    .line 41
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/jieli/jl_player/R$string;->pref_key_enable_background_play:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getEnableDetachedSurfaceTextureView()Z
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/jieli/jl_player/R$string;->pref_key_enable_detached_surface_texture:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getEnableNoView()Z
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/jieli/jl_player/R$string;->pref_key_enable_no_view:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getEnableSurfaceView()Z
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/jieli/jl_player/R$string;->pref_key_enable_surface_view:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getEnableTextureView()Z
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/jieli/jl_player/R$string;->pref_key_enable_texture_view:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getLastDirectory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/jieli/jl_player/R$string;->pref_key_last_directory:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "/"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMediaCodecHandleResolutionChange()Z
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/jieli/jl_player/R$string;->pref_key_media_codec_handle_resolution_change:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getPixelFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/jieli/jl_player/R$string;->pref_key_pixel_format:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPlayer()I
    .locals 5

    .prologue
    .line 46
    iget-object v3, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    sget v4, Lcom/jieli/jl_player/R$string;->pref_key_player:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 51
    :goto_0
    return v3

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getUsingMediaCodec()Z
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/jieli/jl_player/R$string;->pref_key_using_media_codec:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getUsingMediaCodecAutoRotate()Z
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/jieli/jl_player/R$string;->pref_key_using_media_codec_auto_rotate:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getUsingMediaDataSource()Z
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/jieli/jl_player/R$string;->pref_key_using_mediadatasource:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getUsingOpenSLES()Z
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/jieli/jl_player/R$string;->pref_key_using_opensl_es:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setLastDirectory(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/jieli/jl_player/R$string;->pref_key_last_directory:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    return-void
.end method
