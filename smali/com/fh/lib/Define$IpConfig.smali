.class public Lcom/fh/lib/Define$IpConfig;
.super Ljava/lang/Object;
.source "Define.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/lib/Define;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IpConfig"
.end annotation


# instance fields
.field public isAutoIP:I

.field public sGateway:Ljava/lang/String;

.field public sIP:Ljava/lang/String;

.field public sMark:Ljava/lang/String;

.field public sPort:Ljava/lang/String;

.field final synthetic this$0:Lcom/fh/lib/Define;


# direct methods
.method public constructor <init>(Lcom/fh/lib/Define;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/lib/Define;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/fh/lib/Define$IpConfig;->this$0:Lcom/fh/lib/Define;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
