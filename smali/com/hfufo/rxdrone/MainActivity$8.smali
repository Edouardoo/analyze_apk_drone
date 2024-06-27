.class Lcom/hfufo/rxdrone/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/MainActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 1809
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$8;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1813
    const-string v2, "MainActivity"

    const-string v3, "\u6253\u5f00\u5bf9\u8bdd\u6846"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$8;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/MainActivity;->access$1800(Lcom/hfufo/rxdrone/MainActivity;)I

    move-result v2

    invoke-static {v2}, Lcom/fh/hdutil/AppUtils;->getDeviceVersion(I)Ljava/lang/String;

    move-result-object v0

    .line 1817
    .local v0, "deviceVersion":Ljava/lang/String;
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$8;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "229.13.H0T29.GTF"

    .line 1818
    .local v1, "phoneVersion":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1876
    :cond_0
    :goto_0
    return-void

    .line 1849
    :cond_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$8;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "229.13.H0T29.GTF"

    .line 1850
    invoke-static {}, Lcom/fh/hdutil/FTPClientUtil;->getInstance()Lcom/fh/hdutil/FTPClientUtil;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/fh/hdutil/FTPClientUtil;->setChooseType(I)V

    .line 1852
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1853
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$8;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/MainActivity;->access$1902(Lcom/hfufo/rxdrone/MainActivity;Z)Z

    .line 1859
    :goto_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$8;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 1855
    :cond_2
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$8;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v2, v4}, Lcom/hfufo/rxdrone/MainActivity;->access$1902(Lcom/hfufo/rxdrone/MainActivity;Z)Z

    goto :goto_1
.end method
