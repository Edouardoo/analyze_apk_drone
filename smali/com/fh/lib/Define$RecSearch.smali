.class public Lcom/fh/lib/Define$RecSearch;
.super Ljava/lang/Object;
.source "Define.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/lib/Define;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecSearch"
.end annotation


# instance fields
.field public chanSeldID:I

.field public lockFSeldID:I

.field public startDay:I

.field public startMonth:I

.field public startYear:I

.field public stopDay:I

.field public stopMonth:I

.field public stopYear:I

.field final synthetic this$0:Lcom/fh/lib/Define;

.field public typeSeldID:I


# direct methods
.method public constructor <init>(Lcom/fh/lib/Define;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/lib/Define;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fh/lib/Define$RecSearch;->this$0:Lcom/fh/lib/Define;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
