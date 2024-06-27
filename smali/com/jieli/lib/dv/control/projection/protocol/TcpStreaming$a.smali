.class Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->create(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming$a;->c:Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;

    iput-object p2, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming$a;->a:Ljava/lang/String;

    iput p3, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming$a;->c:Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming$a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming$a;->b:I

    invoke-static {v0, v1, v2}, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->a(Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;Ljava/lang/String;I)V

    return-void
.end method
