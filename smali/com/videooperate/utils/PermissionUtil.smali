.class public abstract Lcom/videooperate/utils/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasSelfPermission(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 90
    invoke-static {}, Lcom/videooperate/utils/PermissionUtil;->isMNC()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSelfPermission(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-static {}, Lcom/videooperate/utils/PermissionUtil;->isMNC()Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 60
    :cond_1
    array-length v4, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 61
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    .line 62
    goto :goto_0

    .line 60
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-static {}, Lcom/videooperate/utils/PermissionUtil;->isMNC()Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    array-length v4, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 75
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    .line 76
    goto :goto_0

    .line 74
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static isMNC()Z
    .locals 2

    .prologue
    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static verifyPermissions([I)Z
    .locals 4
    .param p0, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 39
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p0, v2

    .line 40
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 44
    .end local v0    # "result":I
    :goto_1
    return v1

    .line 39
    .restart local v0    # "result":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "result":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
