.class Lcom/fh/lib/SDLGenericMotionListener_API12;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 943
    invoke-static {p2}, Lcom/fh/lib/SDLActivity;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
