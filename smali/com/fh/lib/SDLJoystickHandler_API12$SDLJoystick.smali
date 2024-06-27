.class Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;
.super Ljava/lang/Object;
.source "SDLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/lib/SDLJoystickHandler_API12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SDLJoystick"
.end annotation


# instance fields
.field public axes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation
.end field

.field public device_id:I

.field public hats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/fh/lib/SDLJoystickHandler_API12;


# direct methods
.method constructor <init>(Lcom/fh/lib/SDLJoystickHandler_API12;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/lib/SDLJoystickHandler_API12;

    .prologue
    .line 810
    iput-object p1, p0, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->this$0:Lcom/fh/lib/SDLJoystickHandler_API12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
