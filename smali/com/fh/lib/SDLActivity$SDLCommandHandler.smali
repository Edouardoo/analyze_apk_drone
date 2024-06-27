.class public Lcom/fh/lib/SDLActivity$SDLCommandHandler;
.super Landroid/os/Handler;
.source "SDLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/lib/SDLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SDLCommandHandler"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 238
    invoke-static {}, Lcom/fh/lib/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 239
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 240
    const-string v2, "SDL"

    const-string v3, "error handling message, getContext() returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 243
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 262
    :pswitch_0
    instance-of v2, v0, Lcom/fh/lib/SDLActivity;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/fh/lib/SDLActivity;

    .end local v0    # "context":Landroid/content/Context;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 263
    invoke-virtual {v0, v2, v3}, Lcom/fh/lib/SDLActivity;->onUnhandledMessage(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    const-string v2, "SDL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error handling message, command is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .restart local v0    # "context":Landroid/content/Context;
    :pswitch_1
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 246
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    const-string v2, "SDL"

    const-string v3, "error handling message, getContext() returned no Activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :pswitch_2
    sget-object v2, Lcom/fh/lib/SDLActivity;->mTextEdit:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 253
    sget-object v2, Lcom/fh/lib/SDLActivity;->mTextEdit:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 255
    const-string v2, "input_method"

    .line 256
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 257
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v2, Lcom/fh/lib/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
