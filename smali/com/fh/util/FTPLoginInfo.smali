.class public Lcom/fh/util/FTPLoginInfo;
.super Ljava/lang/Object;
.source "FTPLoginInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x48f8e42bda6ee993L


# instance fields
.field private hostname:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private port:I

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/fh/util/FTPLoginInfo;->hostname:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/fh/util/FTPLoginInfo;->port:I

    .line 16
    iput-object p3, p0, Lcom/fh/util/FTPLoginInfo;->userName:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/fh/util/FTPLoginInfo;->password:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fh/util/FTPLoginInfo;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fh/util/FTPLoginInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/fh/util/FTPLoginInfo;->port:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fh/util/FTPLoginInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fh/util/FTPLoginInfo;->hostname:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fh/util/FTPLoginInfo;->password:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/fh/util/FTPLoginInfo;->port:I

    .line 34
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fh/util/FTPLoginInfo;->userName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hostname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fh/util/FTPLoginInfo;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fh/util/FTPLoginInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fh/util/FTPLoginInfo;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
