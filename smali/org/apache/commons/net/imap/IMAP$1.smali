.class final Lorg/apache/commons/net/imap/IMAP$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/imap/IMAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chunkReceived(Lorg/apache/commons/net/imap/IMAP;)Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method
