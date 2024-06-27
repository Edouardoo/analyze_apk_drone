.class public Lorg/apache/commons/net/PrintCommandListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/net/ProtocolCommandListener;


# instance fields
.field private final __directionMarker:Z

.field private final __eolMarker:C

.field private final __nologin:Z

.field private final __writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;Z)V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;ZC)V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZC)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;ZCZ)V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZCZ)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;Z)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Z)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZC)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;ZC)V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZCZ)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;ZCZ)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    .line 144
    iput-boolean p2, p0, Lorg/apache/commons/net/PrintCommandListener;->__nologin:Z

    .line 145
    iput-char p3, p0, Lorg/apache/commons/net/PrintCommandListener;->__eolMarker:C

    .line 146
    iput-boolean p4, p0, Lorg/apache/commons/net/PrintCommandListener;->__directionMarker:Z

    .line 147
    return-void
.end method

.method private getPrintableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 178
    iget-char v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__eolMarker:C

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-object p1

    .line 181
    :cond_1
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 182
    if-lez v0, :cond_0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-char v2, p0, Lorg/apache/commons/net/PrintCommandListener;->__eolMarker:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public protocolCommandSent(Lorg/apache/commons/net/ProtocolCommandEvent;)V
    .locals 4

    .prologue
    .line 152
    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__directionMarker:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__nologin:Z

    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getCommand()Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v1, "PASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "USER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    const-string v1, " *******"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 175
    return-void

    .line 161
    :cond_2
    const-string v1, "LOGIN"

    .line 162
    const-string v1, "LOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 164
    const/4 v1, 0x0

    const-string v2, "LOGIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "LOGIN"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    const-string v1, " *******"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/net/PrintCommandListener;->getPrintableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/net/PrintCommandListener;->getPrintableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public protocolReplyReceived(Lorg/apache/commons/net/ProtocolCommandEvent;)V
    .locals 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__directionMarker:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 200
    return-void
.end method
