.class public Lio/microshow/rxffmpeg/EpEditor$OutputOption;
.super Ljava/lang/Object;
.source "EpEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/microshow/rxffmpeg/EpEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputOption"
.end annotation


# static fields
.field static final FOUR_TO_THREE:I = 0x2

.field static final NINE_TO_SIXTEEN:I = 0x4

.field static final ONE_TO_ONE:I = 0x1

.field static final SIXTEEN_TO_NINE:I = 0x3

.field static final THREE_TO_FOUR:I = 0x5


# instance fields
.field public bitRate:I

.field public frameRate:I

.field private height:I

.field public outFormat:Ljava/lang/String;

.field outPath:Ljava/lang/String;

.field private sar:I

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "outPath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iput v0, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->frameRate:I

    .line 739
    iput v0, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->bitRate:I

    .line 740
    const-string v0, ""

    iput-object v0, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->outFormat:Ljava/lang/String;

    .line 741
    const/16 v0, 0x500

    iput v0, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->width:I

    .line 742
    const/16 v0, 0x2d0

    iput v0, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->height:I

    .line 743
    const/4 v0, 0x3

    iput v0, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->sar:I

    .line 746
    iput-object p1, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->outPath:Ljava/lang/String;

    .line 747
    return-void
.end method

.method static synthetic access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I
    .locals 1
    .param p0, "x0"    # Lio/microshow/rxffmpeg/EpEditor$OutputOption;

    .prologue
    .line 730
    iget v0, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->width:I

    return v0
.end method

.method static synthetic access$002(Lio/microshow/rxffmpeg/EpEditor$OutputOption;I)I
    .locals 0
    .param p0, "x0"    # Lio/microshow/rxffmpeg/EpEditor$OutputOption;
    .param p1, "x1"    # I

    .prologue
    .line 730
    iput p1, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->width:I

    return p1
.end method

.method static synthetic access$100(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I
    .locals 1
    .param p0, "x0"    # Lio/microshow/rxffmpeg/EpEditor$OutputOption;

    .prologue
    .line 730
    iget v0, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->height:I

    return v0
.end method

.method static synthetic access$102(Lio/microshow/rxffmpeg/EpEditor$OutputOption;I)I
    .locals 0
    .param p0, "x0"    # Lio/microshow/rxffmpeg/EpEditor$OutputOption;
    .param p1, "x1"    # I

    .prologue
    .line 730
    iput p1, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->height:I

    return p1
.end method


# virtual methods
.method getOutputInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .local v0, "res":Ljava/lang/StringBuilder;
    iget v1, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->frameRate:I

    if-eqz v1, :cond_0

    .line 791
    const-string v1, " -r "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->frameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 793
    :cond_0
    iget v1, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->bitRate:I

    if-eqz v1, :cond_1

    .line 794
    const-string v1, " -b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->bitRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    :cond_1
    iget-object v1, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->outFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 797
    const-string v1, " -f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->outFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSar()Ljava/lang/String;
    .locals 3

    .prologue
    .line 756
    iget v1, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->sar:I

    packed-switch v1, :pswitch_data_0

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 776
    .local v0, "res":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 758
    .end local v0    # "res":Ljava/lang/String;
    :pswitch_0
    const-string v0, "1/1"

    .line 759
    .restart local v0    # "res":Ljava/lang/String;
    goto :goto_0

    .line 761
    .end local v0    # "res":Ljava/lang/String;
    :pswitch_1
    const-string v0, "4/3"

    .line 762
    .restart local v0    # "res":Ljava/lang/String;
    goto :goto_0

    .line 764
    .end local v0    # "res":Ljava/lang/String;
    :pswitch_2
    const-string v0, "3/4"

    .line 765
    .restart local v0    # "res":Ljava/lang/String;
    goto :goto_0

    .line 767
    .end local v0    # "res":Ljava/lang/String;
    :pswitch_3
    const-string v0, "16/9"

    .line 768
    .restart local v0    # "res":Ljava/lang/String;
    goto :goto_0

    .line 770
    .end local v0    # "res":Ljava/lang/String;
    :pswitch_4
    const-string v0, "9/16"

    .line 771
    .restart local v0    # "res":Ljava/lang/String;
    goto :goto_0

    .line 756
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 818
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 819
    :cond_0
    iput p1, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->height:I

    .line 820
    return-void
.end method

.method public setSar(I)V
    .locals 0
    .param p1, "sar"    # I

    .prologue
    .line 780
    iput p1, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->sar:I

    .line 781
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 808
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 809
    :cond_0
    iput p1, p0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->width:I

    .line 810
    return-void
.end method
