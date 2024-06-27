.class Lcom/videooperate/adapter/LocationMusicAdapter$1;
.super Ljava/lang/Object;
.source "LocationMusicAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/adapter/LocationMusicAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/adapter/LocationMusicAdapter;

.field final synthetic val$viewholder:Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/videooperate/adapter/LocationMusicAdapter;Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/adapter/LocationMusicAdapter;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/videooperate/adapter/LocationMusicAdapter$1;->this$0:Lcom/videooperate/adapter/LocationMusicAdapter;

    iput-object p2, p0, Lcom/videooperate/adapter/LocationMusicAdapter$1;->val$viewholder:Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter$1;->val$viewholder:Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;

    iget-object v0, v0, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->iv_play:Lcom/videooperate/view/MusicButton;

    invoke-virtual {v0}, Lcom/videooperate/view/MusicButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 90
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter$1;->this$0:Lcom/videooperate/adapter/LocationMusicAdapter;

    iget-object v1, p0, Lcom/videooperate/adapter/LocationMusicAdapter$1;->val$viewholder:Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;

    iget-object v1, v1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->iv_play:Lcom/videooperate/view/MusicButton;

    invoke-virtual {v1}, Lcom/videooperate/view/MusicButton;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/videooperate/adapter/LocationMusicAdapter;->access$002(Lcom/videooperate/adapter/LocationMusicAdapter;I)I

    .line 91
    iget-object v0, p0, Lcom/videooperate/adapter/LocationMusicAdapter$1;->this$0:Lcom/videooperate/adapter/LocationMusicAdapter;

    iget-object v1, p0, Lcom/videooperate/adapter/LocationMusicAdapter$1;->val$viewholder:Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;

    iget-object v1, v1, Lcom/videooperate/adapter/LocationMusicAdapter$ViewHolder;->iv_play:Lcom/videooperate/view/MusicButton;

    invoke-virtual {v1}, Lcom/videooperate/view/MusicButton;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/videooperate/adapter/LocationMusicAdapter;->access$102(Lcom/videooperate/adapter/LocationMusicAdapter;I)I

    .line 92
    const/4 v0, 0x1

    return v0
.end method
