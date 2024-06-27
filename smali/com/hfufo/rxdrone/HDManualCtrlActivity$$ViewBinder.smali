.class public Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/hfufo/rxdrone/HDManualCtrlActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$ViewBinder",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;, "Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/Object;)V
    .locals 7
    .param p1, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p3, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;, "Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder<TT;>;"
    .local p2, "target":Lcom/hfufo/rxdrone/HDManualCtrlActivity;, "TT;"
    const v6, 0x7f0f008e

    const v5, 0x7f0f008d

    const v2, 0x7f0f008c

    const v4, 0x7f0f0088

    const v3, 0x7f0f0087

    .line 11
    const-string v1, "field \'total_time\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'total_time\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->total_time:Landroid/widget/TextView;

    .line 13
    const-string v1, "field \'current_time\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'current_time\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->current_time:Landroid/widget/TextView;

    .line 15
    const-string v1, "field \'scale_num\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'scale_num\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scale_num:Landroid/widget/TextView;

    .line 17
    const v1, 0x7f0f00c4

    const-string v2, "field \'con_panorama\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00c4

    const-string v2, "field \'con_panorama\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_panorama:Landroid/widget/ImageView;

    .line 19
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$1;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const v1, 0x7f0f00f1

    const-string v2, "field \'con_tips\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00f1

    const-string v2, "field \'con_tips\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_tips:Landroid/widget/RelativeLayout;

    .line 29
    const v1, 0x7f0f00f8

    const-string v2, "field \'con_tips1\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00f8

    const-string v2, "field \'con_tips1\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_tips1:Landroid/widget/RelativeLayout;

    .line 31
    const v1, 0x7f0f00f2

    const-string v2, "field \'tip_image1\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00f2

    const-string v2, "field \'tip_image1\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_image1:Landroid/widget/ImageView;

    .line 33
    const v1, 0x7f0f00f3

    const-string v2, "field \'tip_text1\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00f3

    const-string v2, "field \'tip_text1\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_text1:Landroid/widget/TextView;

    .line 35
    const v1, 0x7f0f00f4

    const-string v2, "field \'tip_text3\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 36
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00f4

    const-string v2, "field \'tip_text3\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_text3:Landroid/widget/TextView;

    .line 37
    const v1, 0x7f0f00f5

    const-string v2, "field \'tip_image2\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 38
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00f5

    const-string v2, "field \'tip_image2\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_image2:Landroid/widget/ImageView;

    .line 39
    const v1, 0x7f0f00f6

    const-string v2, "field \'tip_text2\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 40
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00f6

    const-string v2, "field \'tip_text2\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_text2:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f0f00eb

    const-string v2, "field \'waitting\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 42
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00eb

    const-string v2, "field \'waitting\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitting:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f0f00d0

    const-string v2, "field \'choose_hd\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 44
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00d0

    const-string v2, "field \'choose_hd\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->choose_hd:Landroid/widget/ImageView;

    .line 45
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$2;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v1, 0x7f0f00d1

    const-string v2, "field \'ivAddMusic\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 54
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00d1

    const-string v2, "field \'ivAddMusic\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ivAddMusic:Landroid/widget/ImageView;

    .line 55
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$3;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v1, 0x7f0f00b2

    const-string v2, "field \'tvMusicName\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 64
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00b2

    const-string v2, "field \'tvMusicName\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tvMusicName:Landroid/widget/TextView;

    .line 65
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$4;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0f00cf

    const-string v2, "field \'ivMusicDel\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 74
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00cf

    const-string v2, "field \'ivMusicDel\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ivMusicDel:Landroid/widget/ImageView;

    .line 75
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$5;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v1, 0x7f0f009e

    const-string v2, "field \'ptz_picture\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 84
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f009e

    const-string v2, "field \'ptz_picture\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ptz_picture:Landroid/widget/ImageView;

    .line 85
    const v1, 0x7f0f009a

    const-string v2, "field \'ptz_layout\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 86
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f009a

    const-string v2, "field \'ptz_layout\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ptz_layout:Landroid/widget/RelativeLayout;

    .line 87
    const v1, 0x7f0f009f

    const-string v2, "field \'tranRudder\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 88
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f009f

    const-string v2, "field \'tranRudder\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/TranRockerBgView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tranRudder:Lcom/hfufo/widget/TranRockerBgView;

    .line 89
    const-string v1, "field \'hd_ac\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 90
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'hd_ac\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hd_ac:Landroid/widget/RelativeLayout;

    .line 91
    const-string v1, "field \'video_layout\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 92
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'video_layout\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->video_layout:Landroid/widget/LinearLayout;

    .line 93
    const v1, 0x7f0f00d8

    const-string v2, "field \'mode_layout\' and method \'setMode\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 94
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00d8

    const-string v2, "field \'mode_layout\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    .line 95
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$6;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$6;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v1, 0x7f0f00d9

    const-string v2, "field \'modeText\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 104
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00d9

    const-string v2, "field \'modeText\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->modeText:Landroid/widget/TextView;

    .line 105
    const v1, 0x7f0f00d7

    const-string v2, "field \'onText\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 106
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00d7

    const-string v2, "field \'onText\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onText:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f0f00c1

    const-string v2, "field \'con_drawline\' and method \'drawline\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 108
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00c1

    const-string v2, "field \'con_drawline\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_drawline:Landroid/widget/ImageView;

    .line 109
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$7;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$7;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v1, 0x7f0f00ea

    const-string v2, "field \'pathview\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 118
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00ea

    const-string v2, "field \'pathview\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/PathView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pathview:Lcom/hfufo/widget/PathView;

    .line 119
    const v1, 0x7f0f00c7

    const-string v2, "field \'palm_follow\' and method \'setPalmFollow\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 120
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00c7

    const-string v2, "field \'palm_follow\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    .line 121
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$8;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$8;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v1, 0x7f0f00e0

    const-string v2, "field \'flyText\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 130
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00e0

    const-string v2, "field \'flyText\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyText:Landroid/widget/TextView;

    .line 131
    const v1, 0x7f0f00ba

    const-string v2, "field \'fileText\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 132
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00ba

    const-string v2, "field \'fileText\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->fileText:Landroid/widget/TextView;

    .line 133
    const v1, 0x7f0f00a1

    const-string v2, "field \'leftUp\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 134
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00a1

    const-string v2, "field \'leftUp\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftUp:Landroid/widget/ImageView;

    .line 135
    const v1, 0x7f0f00a2

    const-string v2, "field \'leftDown\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 136
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00a2

    const-string v2, "field \'leftDown\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftDown:Landroid/widget/ImageView;

    .line 137
    const v1, 0x7f0f00a6

    const-string v2, "field \'leftRLeft\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 138
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00a6

    const-string v2, "field \'leftRLeft\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRLeft:Landroid/widget/ImageView;

    .line 139
    const v1, 0x7f0f00a7

    const-string v2, "field \'leftRRight\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 140
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00a7

    const-string v2, "field \'leftRRight\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRRight:Landroid/widget/ImageView;

    .line 141
    const v1, 0x7f0f00a4

    const-string v2, "field \'leftRUp\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 142
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00a4

    const-string v2, "field \'leftRUp\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRUp:Landroid/widget/ImageView;

    .line 143
    const v1, 0x7f0f00a5

    const-string v2, "field \'leftRDown\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 144
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00a5

    const-string v2, "field \'leftRDown\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRDown:Landroid/widget/ImageView;

    .line 145
    const v1, 0x7f0f00a9

    const-string v2, "field \'rightUp\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 146
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00a9

    const-string v2, "field \'rightUp\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightUp:Landroid/widget/ImageView;

    .line 147
    const v1, 0x7f0f00aa

    const-string v2, "field \'rightDown\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 148
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00aa

    const-string v2, "field \'rightDown\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightDown:Landroid/widget/ImageView;

    .line 149
    const v1, 0x7f0f00ae

    const-string v2, "field \'rightLLeft\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 150
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00ae

    const-string v2, "field \'rightLLeft\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLLeft:Landroid/widget/ImageView;

    .line 151
    const v1, 0x7f0f00af

    const-string v2, "field \'rightLRight\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 152
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00af

    const-string v2, "field \'rightLRight\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLRight:Landroid/widget/ImageView;

    .line 153
    const v1, 0x7f0f00ac

    const-string v2, "field \'rightLUp\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 154
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00ac

    const-string v2, "field \'rightLUp\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLUp:Landroid/widget/ImageView;

    .line 155
    const v1, 0x7f0f00ad

    const-string v2, "field \'rightLDown\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 156
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00ad

    const-string v2, "field \'rightLDown\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLDown:Landroid/widget/ImageView;

    .line 157
    const v1, 0x7f0f0094

    const-string v2, "field \'rocker_hide\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 158
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f0094

    const-string v2, "field \'rocker_hide\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    .line 159
    const v1, 0x7f0f0099

    const-string v2, "field \'topRudder\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 160
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f0099

    const-string v2, "field \'topRudder\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/LeftRockerBgView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    .line 161
    const v1, 0x7f0f00a0

    const-string v2, "field \'classicLeft\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 162
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00a0

    const-string v2, "field \'classicLeft\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->classicLeft:Landroid/widget/RelativeLayout;

    .line 163
    const v1, 0x7f0f00a3

    const-string v2, "field \'classicRight\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 164
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00a3

    const-string v2, "field \'classicRight\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->classicRight:Landroid/widget/RelativeLayout;

    .line 165
    const v1, 0x7f0f00a8

    const-string v2, "field \'rightClassicLeft\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 166
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00a8

    const-string v2, "field \'rightClassicLeft\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightClassicLeft:Landroid/widget/RelativeLayout;

    .line 167
    const v1, 0x7f0f00ab

    const-string v2, "field \'rightClassicRight\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 168
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00ab

    const-string v2, "field \'rightClassicRight\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightClassicRight:Landroid/widget/RelativeLayout;

    .line 169
    const v1, 0x7f0f00b4

    const-string v2, "field \'tvRecTime\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 170
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00b4

    const-string v2, "field \'tvRecTime\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tvRecTime:Landroid/widget/TextView;

    .line 171
    const v1, 0x7f0f00b3

    const-string v2, "field \'record_flag\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 172
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00b3

    const-string v2, "field \'record_flag\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->record_flag:Landroid/widget/ImageView;

    .line 173
    const v1, 0x7f0f00b1

    const-string v2, "field \'rl_rec_time\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 174
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00b1

    const-string v2, "field \'rl_rec_time\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rl_rec_time:Landroid/widget/RelativeLayout;

    .line 175
    const v1, 0x7f0f00db

    const-string v2, "field \'rl_manual\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 176
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00db

    const-string v2, "field \'rl_manual\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rl_manual:Landroid/widget/RelativeLayout;

    .line 177
    const v1, 0x7f0f00c5

    const-string v2, "field \'manualBtn\' and method \'manualBtnClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 178
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00c5

    const-string v2, "field \'manualBtn\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualBtn:Landroid/widget/ImageView;

    .line 179
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$9;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$9;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v1, 0x7f0f00dc

    const-string v2, "field \'manualView\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 188
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00dc

    const-string v2, "field \'manualView\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/ManualView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    .line 189
    const v1, 0x7f0f00dd

    const-string v2, "field \'motionView\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 190
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00dd

    const-string v2, "field \'motionView\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/MotionView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->motionView:Lcom/hfufo/widget/MotionView;

    .line 191
    const v1, 0x7f0f00df

    const-string v2, "field \'con_takeoff\' and method \'takeoff\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 192
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00df

    const-string v2, "field \'con_takeoff\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_takeoff:Landroid/widget/ImageView;

    .line 193
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$10;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$10;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v1, 0x7f0f00cb

    const-string v2, "field \'open_palmVideo\' and method \'openPalmVideo\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 202
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00cb

    const-string v2, "field \'open_palmVideo\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    .line 203
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$11;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$11;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v1, 0x7f0f00bc

    const-string v2, "field \'con_face\' and method \'chooseMode\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 212
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00bc

    const-string v2, "field \'con_face\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_face:Landroid/widget/ImageView;

    .line 213
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$12;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$12;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v1, 0x7f0f00b9

    const-string v2, "field \'con_file\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 222
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00b9

    const-string v2, "field \'con_file\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_file:Landroid/widget/ImageView;

    .line 223
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$13;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$13;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    const v1, 0x7f0f00bd

    const-string v2, "field \'con_music\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 232
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00bd

    const-string v2, "field \'con_music\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    .line 233
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$14;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$14;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const v1, 0x7f0f00e1

    const-string v2, "field \'con_land\' and method \'land\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 242
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00e1

    const-string v2, "field \'con_land\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_land:Landroid/widget/ImageView;

    .line 243
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$15;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$15;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    const v1, 0x7f0f00e2

    const-string v2, "field \'con_stop\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 252
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00e2

    const-string v2, "field \'con_stop\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_stop:Landroid/widget/RelativeLayout;

    .line 253
    const v1, 0x7f0f00d6

    const-string v2, "field \'con_rockercon\' and method \'rockercon\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 254
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00d6

    const-string v2, "field \'con_rockercon\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rockercon:Landroid/widget/ImageView;

    .line 255
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$16;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$16;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v1, 0x7f0f00b5

    const-string v2, "field \'change_fix\' and method \'changeFix\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 264
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00b5

    const-string v2, "field \'change_fix\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->change_fix:Landroid/widget/Button;

    .line 265
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$17;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$17;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    const v1, 0x7f0f00c8

    const-string v2, "field \'con_fix\' and method \'openFix\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 274
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00c8

    const-string v2, "field \'con_fix\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_fix:Landroid/widget/Button;

    .line 275
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$18;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$18;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    const v1, 0x7f0f00c9

    const-string v2, "field \'con_body\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 284
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00c9

    const-string v2, "field \'con_body\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_body:Landroid/widget/ImageView;

    .line 285
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$19;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$19;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v1, 0x7f0f00b8

    const-string v2, "field \'calibration\' and method \'calibration\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 294
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00b8

    const-string v2, "field \'calibration\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->calibration:Landroid/widget/ImageView;

    .line 295
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$20;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$20;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    const v1, 0x7f0f00d4

    const-string v2, "field \'takephoto\' and method \'takePhoto\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 304
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00d4

    const-string v2, "field \'takephoto\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takephoto:Landroid/widget/ImageView;

    .line 305
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$21;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$21;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    const v1, 0x7f0f00d5

    const-string v2, "field \'takevideo\' and method \'takeVideo\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 314
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00d5

    const-string v2, "field \'takevideo\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takevideo:Landroid/widget/ImageView;

    .line 315
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$22;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$22;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const v1, 0x7f0f00e5

    const-string v2, "field \'ll_trim\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 324
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00e5

    const-string v2, "field \'ll_trim\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ll_trim:Landroid/widget/LinearLayout;

    .line 325
    const v1, 0x7f0f00e6

    const-string v2, "field \'trim1\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 326
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00e6

    const-string v2, "field \'trim1\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/MicroTrimView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim1:Lcom/hfufo/widget/MicroTrimView;

    .line 327
    const v1, 0x7f0f00e7

    const-string v2, "field \'trim2\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 328
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00e7

    const-string v2, "field \'trim2\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/MicroTrimView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim2:Lcom/hfufo/widget/MicroTrimView;

    .line 329
    const v1, 0x7f0f00e9

    const-string v2, "field \'trim3\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 330
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00e9

    const-string v2, "field \'trim3\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/MicroTrimView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim3:Lcom/hfufo/widget/MicroTrimView;

    .line 331
    const v1, 0x7f0f00e8

    const-string v2, "field \'trim4\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 332
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00e8

    const-string v2, "field \'trim4\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/MicroTrimView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim4:Lcom/hfufo/widget/MicroTrimView;

    .line 333
    const v1, 0x7f0f00d3

    const-string v2, "field \'btn_speed\' and method \'speed\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 334
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00d3

    const-string v2, "field \'btn_speed\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    .line 335
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$23;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$23;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    const v1, 0x7f0f00c3

    const-string v2, "field \'vr\' and method \'vr\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 344
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00c3

    const-string v2, "field \'vr\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->vr:Landroid/widget/ImageView;

    .line 345
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$24;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$24;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    const v1, 0x7f0f00b7

    const-string v2, "field \'rollView\' and method \'roll\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 354
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00b7

    const-string v2, "field \'rollView\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rollView:Landroid/widget/ImageView;

    .line 355
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$25;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$25;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    const v1, 0x7f0f00c6

    const-string v2, "field \'con_return\' and method \'retrun\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 364
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00c6

    const-string v2, "field \'con_return\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_return:Landroid/widget/ImageView;

    .line 365
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$26;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$26;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    const v1, 0x7f0f00c0

    const-string v2, "field \'hd_con_rev\' and method \'hdRev\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 374
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00c0

    const-string v2, "field \'hd_con_rev\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hd_con_rev:Landroid/widget/ImageView;

    .line 375
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$27;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$27;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    const v1, 0x7f0f00c2

    const-string v2, "field \'onhead\' and method \'onHead\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 384
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00c2

    const-string v2, "field \'onhead\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onhead:Landroid/widget/ImageView;

    .line 385
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$28;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$28;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    const v1, 0x7f0f0092

    const-string v2, "field \'left_layout_hide\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 394
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->left_layout_hide:Landroid/view/View;

    .line 395
    const v1, 0x7f0f0093

    const-string v2, "field \'right_layout_hide\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 396
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->right_layout_hide:Landroid/view/View;

    .line 397
    const v1, 0x7f0f008f

    const-string v2, "field \'mLoadingView\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 398
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f008f

    const-string v2, "field \'mLoadingView\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mLoadingView:Landroid/widget/ProgressBar;

    .line 399
    const v1, 0x7f0f00da

    const-string v2, "field \'tv_time\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 400
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00da

    const-string v2, "field \'tv_time\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tv_time:Landroid/widget/ImageView;

    .line 401
    const v1, 0x7f0f00de

    const-string v2, "field \'gesture_thum\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 402
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00de

    const-string v2, "field \'gesture_thum\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->gesture_thum:Landroid/widget/ImageView;

    .line 403
    const v1, 0x7f0f00ca

    const-string v2, "field \'switchCamera\' and method \'switchCamera\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 404
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00ca

    const-string v2, "field \'switchCamera\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->switchCamera:Landroid/widget/ImageView;

    .line 405
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$29;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$29;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    const v1, 0x7f0f00b6

    const-string v2, "field \'switchCamera2\' and method \'switchCamera2\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 414
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00b6

    const-string v2, "field \'switchCamera2\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->switchCamera2:Landroid/widget/ImageView;

    .line 415
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$30;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$30;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    const v1, 0x7f0f00d2

    const-string v2, "field \'con_rotate\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 424
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00d2

    const-string v2, "field \'con_rotate\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rotate:Landroid/widget/ImageView;

    .line 425
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$31;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$31;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    const v1, 0x7f0f009b

    const-string v2, "field \'con_backc\' and method \'back\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 434
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f009b

    const-string v2, "field \'con_backc\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_backc:Landroid/widget/ImageView;

    .line 435
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$32;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$32;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    const v1, 0x7f0f00bf

    const-string v2, "field \'con_menu\' and method \'setMenu\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 444
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00bf

    const-string v2, "field \'con_menu\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_menu:Landroid/widget/ImageView;

    .line 445
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$33;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$33;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    const v1, 0x7f0f00be

    const-string v2, "field \'return_control\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 454
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00be

    const-string v2, "field \'return_control\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->return_control:Landroid/widget/ImageView;

    .line 455
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$34;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$34;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    const v1, 0x7f0f00ce

    const-string v2, "field \'con_music_select\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 464
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00ce

    const-string v2, "field \'con_music_select\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music_select:Landroid/widget/ImageView;

    .line 465
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$35;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$35;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    const v1, 0x7f0f00cd

    const-string v2, "field \'con_hide\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 474
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00cd

    const-string v2, "field \'con_hide\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_hide:Landroid/widget/ImageView;

    .line 475
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$36;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$36;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    const v1, 0x7f0f00cc

    const-string v2, "field \'con_file1\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 484
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00cc

    const-string v2, "field \'con_file1\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_file1:Landroid/widget/ImageView;

    .line 485
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$37;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$37;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    const v1, 0x7f0f00b0

    const-string v2, "field \'con_filter\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 494
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0f00b0

    const-string v2, "field \'con_filter\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_filter:Landroid/widget/ImageView;

    .line 495
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$38;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$38;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    const v1, 0x7f0f00e4

    const-string v2, "method \'stop\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 504
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$39;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$39;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    const v1, 0x7f0f00fc

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 513
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$40;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$40;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    const v1, 0x7f0f00ec

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 522
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$41;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$41;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    const v1, 0x7f0f00ed

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 531
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$42;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$42;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    const v1, 0x7f0f00f7

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 540
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$43;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$43;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    const v1, 0x7f0f00fb

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 549
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$44;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$44;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    const v1, 0x7f0f009d

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 558
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$45;

    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$45;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;, "Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;, "Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder<TT;>;"
    .local p1, "target":Lcom/hfufo/rxdrone/HDManualCtrlActivity;, "TT;"
    const/4 v0, 0x0

    .line 569
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->total_time:Landroid/widget/TextView;

    .line 570
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->current_time:Landroid/widget/TextView;

    .line 571
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scale_num:Landroid/widget/TextView;

    .line 572
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_panorama:Landroid/widget/ImageView;

    .line 573
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_tips:Landroid/widget/RelativeLayout;

    .line 574
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_tips1:Landroid/widget/RelativeLayout;

    .line 575
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_image1:Landroid/widget/ImageView;

    .line 576
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_text1:Landroid/widget/TextView;

    .line 577
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_text3:Landroid/widget/TextView;

    .line 578
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_image2:Landroid/widget/ImageView;

    .line 579
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_text2:Landroid/widget/TextView;

    .line 580
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitting:Landroid/widget/TextView;

    .line 581
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->choose_hd:Landroid/widget/ImageView;

    .line 582
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ivAddMusic:Landroid/widget/ImageView;

    .line 583
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tvMusicName:Landroid/widget/TextView;

    .line 584
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ivMusicDel:Landroid/widget/ImageView;

    .line 585
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ptz_picture:Landroid/widget/ImageView;

    .line 586
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ptz_layout:Landroid/widget/RelativeLayout;

    .line 587
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tranRudder:Lcom/hfufo/widget/TranRockerBgView;

    .line 588
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hd_ac:Landroid/widget/RelativeLayout;

    .line 589
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->video_layout:Landroid/widget/LinearLayout;

    .line 590
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    .line 591
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->modeText:Landroid/widget/TextView;

    .line 592
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onText:Landroid/widget/TextView;

    .line 593
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_drawline:Landroid/widget/ImageView;

    .line 594
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pathview:Lcom/hfufo/widget/PathView;

    .line 595
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    .line 596
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyText:Landroid/widget/TextView;

    .line 597
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->fileText:Landroid/widget/TextView;

    .line 598
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftUp:Landroid/widget/ImageView;

    .line 599
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftDown:Landroid/widget/ImageView;

    .line 600
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRLeft:Landroid/widget/ImageView;

    .line 601
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRRight:Landroid/widget/ImageView;

    .line 602
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRUp:Landroid/widget/ImageView;

    .line 603
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRDown:Landroid/widget/ImageView;

    .line 604
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightUp:Landroid/widget/ImageView;

    .line 605
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightDown:Landroid/widget/ImageView;

    .line 606
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLLeft:Landroid/widget/ImageView;

    .line 607
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLRight:Landroid/widget/ImageView;

    .line 608
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLUp:Landroid/widget/ImageView;

    .line 609
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLDown:Landroid/widget/ImageView;

    .line 610
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    .line 611
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    .line 612
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->classicLeft:Landroid/widget/RelativeLayout;

    .line 613
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->classicRight:Landroid/widget/RelativeLayout;

    .line 614
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightClassicLeft:Landroid/widget/RelativeLayout;

    .line 615
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightClassicRight:Landroid/widget/RelativeLayout;

    .line 616
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tvRecTime:Landroid/widget/TextView;

    .line 617
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->record_flag:Landroid/widget/ImageView;

    .line 618
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rl_rec_time:Landroid/widget/RelativeLayout;

    .line 619
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rl_manual:Landroid/widget/RelativeLayout;

    .line 620
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualBtn:Landroid/widget/ImageView;

    .line 621
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    .line 622
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->motionView:Lcom/hfufo/widget/MotionView;

    .line 623
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_takeoff:Landroid/widget/ImageView;

    .line 624
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    .line 625
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_face:Landroid/widget/ImageView;

    .line 626
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_file:Landroid/widget/ImageView;

    .line 627
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    .line 628
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_land:Landroid/widget/ImageView;

    .line 629
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_stop:Landroid/widget/RelativeLayout;

    .line 630
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rockercon:Landroid/widget/ImageView;

    .line 631
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->change_fix:Landroid/widget/Button;

    .line 632
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_fix:Landroid/widget/Button;

    .line 633
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_body:Landroid/widget/ImageView;

    .line 634
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->calibration:Landroid/widget/ImageView;

    .line 635
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takephoto:Landroid/widget/ImageView;

    .line 636
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takevideo:Landroid/widget/ImageView;

    .line 637
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ll_trim:Landroid/widget/LinearLayout;

    .line 638
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim1:Lcom/hfufo/widget/MicroTrimView;

    .line 639
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim2:Lcom/hfufo/widget/MicroTrimView;

    .line 640
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim3:Lcom/hfufo/widget/MicroTrimView;

    .line 641
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim4:Lcom/hfufo/widget/MicroTrimView;

    .line 642
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    .line 643
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->vr:Landroid/widget/ImageView;

    .line 644
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rollView:Landroid/widget/ImageView;

    .line 645
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_return:Landroid/widget/ImageView;

    .line 646
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hd_con_rev:Landroid/widget/ImageView;

    .line 647
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onhead:Landroid/widget/ImageView;

    .line 648
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->left_layout_hide:Landroid/view/View;

    .line 649
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->right_layout_hide:Landroid/view/View;

    .line 650
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mLoadingView:Landroid/widget/ProgressBar;

    .line 651
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tv_time:Landroid/widget/ImageView;

    .line 652
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->gesture_thum:Landroid/widget/ImageView;

    .line 653
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->switchCamera:Landroid/widget/ImageView;

    .line 654
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->switchCamera2:Landroid/widget/ImageView;

    .line 655
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rotate:Landroid/widget/ImageView;

    .line 656
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_backc:Landroid/widget/ImageView;

    .line 657
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_menu:Landroid/widget/ImageView;

    .line 658
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->return_control:Landroid/widget/ImageView;

    .line 659
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music_select:Landroid/widget/ImageView;

    .line 660
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_hide:Landroid/widget/ImageView;

    .line 661
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_file1:Landroid/widget/ImageView;

    .line 662
    iput-object v0, p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_filter:Landroid/widget/ImageView;

    .line 663
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;, "Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;->unbind(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    return-void
.end method
