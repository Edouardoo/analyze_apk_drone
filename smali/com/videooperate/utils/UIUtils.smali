.class public Lcom/videooperate/utils/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field private static final ANIM_DURATION:I = 0x12c

.field private static mApp:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createColorStateList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 8
    .param p0, "selected"    # Ljava/lang/String;
    .param p1, "pressed"    # Ljava/lang/String;
    .param p2, "normal"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    new-array v1, v4, [I

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v5

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v6

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v7

    .line 136
    .local v1, "colors":[I
    new-array v2, v4, [[I

    .line 137
    .local v2, "states":[[I
    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    aput-object v3, v2, v5

    .line 138
    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    aput-object v3, v2, v6

    .line 139
    new-array v3, v5, [I

    aput-object v3, v2, v7

    .line 140
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 141
    .local v0, "colorList":Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public static dp2px(I)I
    .locals 5
    .param p0, "dip"    # I

    .prologue
    .line 88
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 90
    .local v0, "density":F
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v3

    .line 94
    .local v1, "densityDpi":F
    int-to-float v3, p0

    mul-float/2addr v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 95
    .local v2, "px":I
    return v2
.end method

.method public static getAllScreenHeight(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 178
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 180
    .local v0, "display":Landroid/view/Display;
    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 181
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    const-string v4, "android.view.Display"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "getRealMetrics"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/util/DisplayMetrics;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 182
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 184
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    .line 187
    goto :goto_0
.end method

.method public static getBottomBarHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    invoke-static {p0}, Lcom/videooperate/utils/UIUtils;->getAllScreenHeight(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/videooperate/utils/UIUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getColor(I)I
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 70
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/videooperate/utils/UIUtils;->mApp:Landroid/app/Application;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 195
    .local v0, "metric":Landroid/util/DisplayMetrics;
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 196
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getStatusBarHeight()I
    .locals 6

    .prologue
    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, "statusBarHeight":I
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 201
    .local v0, "res":Landroid/content/res/Resources;
    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 202
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 205
    :cond_0
    return v2
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 49
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I
    .param p1, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 56
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringArr(I)[Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 63
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXstImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 157
    if-nez p0, :cond_0

    .line 158
    const-string v0, ""

    .line 160
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 0
    .param p0, "var0"    # Landroid/app/Application;

    .prologue
    .line 28
    sput-object p0, Lcom/videooperate/utils/UIUtils;->mApp:Landroid/app/Application;

    .line 29
    return-void
.end method

.method public static px2dp(I)I
    .locals 4
    .param p0, "px"    # I

    .prologue
    .line 106
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 108
    .local v0, "density":F
    int-to-float v2, p0

    div-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 109
    .local v1, "dip":I
    return v1
.end method

.method public static px2sp(F)I
    .locals 3
    .param p0, "pxValue"    # F

    .prologue
    .line 119
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 120
    .local v0, "fontScale":F
    div-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static setTextColorSelect(I)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 145
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 146
    .local v4, "xrp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v0, 0x0

    .line 148
    .local v0, "csl":Landroid/content/res/ColorStateList;
    :try_start_0
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .local v1, "csl":Landroid/content/res/ColorStateList;
    move-object v2, v0

    .line 152
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    .local v2, "csl":Landroid/content/res/ColorStateList;
    :goto_0
    return-object v2

    .line 150
    .end local v2    # "csl":Landroid/content/res/ColorStateList;
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    :catch_0
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .restart local v1    # "csl":Landroid/content/res/ColorStateList;
    move-object v2, v0

    .line 152
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    .restart local v2    # "csl":Landroid/content/res/ColorStateList;
    goto :goto_0
.end method

.method public static sp2px(F)I
    .locals 3
    .param p0, "spValue"    # F

    .prologue
    .line 130
    invoke-static {}, Lcom/videooperate/utils/UIUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 131
    .local v0, "fontScale":F
    mul-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
