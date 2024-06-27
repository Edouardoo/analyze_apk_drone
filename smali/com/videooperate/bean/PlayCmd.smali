.class public Lcom/videooperate/bean/PlayCmd;
.super Ljava/lang/Object;
.source "PlayCmd.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/videooperate/bean/PlayCmd$Type;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f40b5192e19c4fbL


# instance fields
.field public data:Ljava/lang/Object;

.field public final type:Lcom/videooperate/bean/PlayCmd$Type;


# direct methods
.method public constructor <init>(Lcom/videooperate/bean/PlayCmd$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/videooperate/bean/PlayCmd$Type;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/videooperate/bean/PlayCmd;->type:Lcom/videooperate/bean/PlayCmd$Type;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/videooperate/bean/PlayCmd$Type;Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # Lcom/videooperate/bean/PlayCmd$Type;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/videooperate/bean/PlayCmd;->type:Lcom/videooperate/bean/PlayCmd$Type;

    .line 32
    iput-object p2, p0, Lcom/videooperate/bean/PlayCmd;->data:Ljava/lang/Object;

    .line 33
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/videooperate/bean/PlayCmd;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Lcom/videooperate/bean/PlayCmd$Type;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/videooperate/bean/PlayCmd;->type:Lcom/videooperate/bean/PlayCmd$Type;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/videooperate/bean/PlayCmd;->data:Ljava/lang/Object;

    .line 45
    return-void
.end method
