.class public Lio/microshow/rxffmpeg/CmdList;
.super Ljava/util/ArrayList;
.source "CmdList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public append(F)Lio/microshow/rxffmpeg/CmdList;
    .locals 2
    .param p1, "f"    # F

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/microshow/rxffmpeg/CmdList;->add(Ljava/lang/Object;)Z

    .line 24
    return-object p0
.end method

.method public append(I)Lio/microshow/rxffmpeg/CmdList;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/microshow/rxffmpeg/CmdList;->add(Ljava/lang/Object;)Z

    .line 19
    return-object p0
.end method

.method public append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lio/microshow/rxffmpeg/CmdList;->add(Ljava/lang/Object;)Z

    .line 14
    return-object p0
.end method

.method public append(Ljava/lang/StringBuilder;)Lio/microshow/rxffmpeg/CmdList;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/microshow/rxffmpeg/CmdList;->add(Ljava/lang/Object;)Z

    .line 29
    return-object p0
.end method

.method public append([Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;
    .locals 5
    .param p1, "ss"    # [Ljava/lang/String;

    .prologue
    .line 33
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 34
    .local v0, "s":Ljava/lang/String;
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    invoke-virtual {p0, v0}, Lio/microshow/rxffmpeg/CmdList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lio/microshow/rxffmpeg/CmdList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, "s":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 47
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
