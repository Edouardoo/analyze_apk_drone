.class final enum Lcom/joanzapata/pdfview/util/DragPinchListener$State;
.super Ljava/lang/Enum;
.source "DragPinchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joanzapata/pdfview/util/DragPinchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/joanzapata/pdfview/util/DragPinchListener$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/joanzapata/pdfview/util/DragPinchListener$State;

.field public static final enum DRAG:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

.field public static final enum NONE:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

.field public static final enum ZOOM:Lcom/joanzapata/pdfview/util/DragPinchListener$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/joanzapata/pdfview/util/DragPinchListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->NONE:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    new-instance v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    const-string v1, "ZOOM"

    invoke-direct {v0, v1, v3}, Lcom/joanzapata/pdfview/util/DragPinchListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->ZOOM:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    new-instance v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    const-string v1, "DRAG"

    invoke-direct {v0, v1, v4}, Lcom/joanzapata/pdfview/util/DragPinchListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->DRAG:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    sget-object v1, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->NONE:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->ZOOM:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->DRAG:Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->$VALUES:[Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/joanzapata/pdfview/util/DragPinchListener$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    const-class v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    return-object v0
.end method

.method public static values()[Lcom/joanzapata/pdfview/util/DragPinchListener$State;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/joanzapata/pdfview/util/DragPinchListener$State;->$VALUES:[Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    invoke-virtual {v0}, [Lcom/joanzapata/pdfview/util/DragPinchListener$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/joanzapata/pdfview/util/DragPinchListener$State;

    return-object v0
.end method
