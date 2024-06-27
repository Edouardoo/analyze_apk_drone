.class public Lcom/fh/lib/Define$WifiConfig;
.super Ljava/lang/Object;
.source "Define.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/lib/Define;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiConfig"
.end annotation


# instance fields
.field public sChan:Ljava/lang/String;

.field public sPSK:Ljava/lang/String;

.field public sSSID:Ljava/lang/String;

.field public status:I

.field final synthetic this$0:Lcom/fh/lib/Define;

.field public wifiMode:I

.field public wifiType:I


# direct methods
.method public constructor <init>(Lcom/fh/lib/Define;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/lib/Define;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/fh/lib/Define$WifiConfig;->this$0:Lcom/fh/lib/Define;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
