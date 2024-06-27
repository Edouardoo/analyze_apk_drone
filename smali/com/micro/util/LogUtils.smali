.class public Lcom/micro/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micro/util/LogUtils$CustomLogger;
    }
.end annotation


# static fields
.field public static allowD:Z

.field public static allowE:Z

.field public static allowI:Z

.field public static allowV:Z

.field public static allowW:Z

.field public static allowWtf:Z

.field public static customLogger:Lcom/micro/util/LogUtils$CustomLogger;

.field public static customTagPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14
    const-string v0, ""

    sput-object v0, Lcom/micro/util/LogUtils;->customTagPrefix:Ljava/lang/String;

    .line 19
    sput-boolean v1, Lcom/micro/util/LogUtils;->allowD:Z

    .line 20
    sput-boolean v1, Lcom/micro/util/LogUtils;->allowE:Z

    .line 21
    sput-boolean v1, Lcom/micro/util/LogUtils;->allowI:Z

    .line 22
    sput-boolean v1, Lcom/micro/util/LogUtils;->allowV:Z

    .line 23
    sput-boolean v1, Lcom/micro/util/LogUtils;->allowW:Z

    .line 24
    sput-boolean v1, Lcom/micro/util/LogUtils;->allowWtf:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-boolean v2, Lcom/micro/util/LogUtils;->allowD:Z

    if-nez v2, :cond_0

    .line 77
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {}, Lcom/micro/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 70
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/micro/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 73
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/micro/util/LogUtils$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    sget-boolean v2, Lcom/micro/util/LogUtils;->allowD:Z

    if-nez v2, :cond_0

    .line 89
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/micro/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 82
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/micro/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 85
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0, p1}, Lcom/micro/util/LogUtils$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {v1, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-boolean v2, Lcom/micro/util/LogUtils;->allowE:Z

    if-nez v2, :cond_0

    .line 101
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {}, Lcom/micro/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 94
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/micro/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 97
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/micro/util/LogUtils$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    sget-boolean v2, Lcom/micro/util/LogUtils;->allowE:Z

    if-nez v2, :cond_0

    .line 113
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/micro/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 106
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/micro/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 109
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0, p1}, Lcom/micro/util/LogUtils$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 5
    .param p0, "caller"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 27
    const-string v1, "%s.%s(L:%d)"

    .line 28
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "callerClazzName":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 31
    sget-object v2, Lcom/micro/util/LogUtils;->customTagPrefix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    :goto_0
    return-object v1

    .line 31
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/micro/util/LogUtils;->customTagPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-boolean v2, Lcom/micro/util/LogUtils;->allowI:Z

    if-nez v2, :cond_0

    .line 125
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/micro/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 118
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/micro/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 121
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/micro/util/LogUtils$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    sget-boolean v2, Lcom/micro/util/LogUtils;->allowI:Z

    if-nez v2, :cond_0

    .line 137
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {}, Lcom/micro/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 130
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/micro/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 133
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0, p1}, Lcom/micro/util/LogUtils$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {v1, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 140
    sget-boolean v2, Lcom/micro/util/LogUtils;->allowV:Z

    if-nez v2, :cond_0

    .line 149
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static {}, Lcom/micro/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 142
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/micro/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 145
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/micro/util/LogUtils$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 152
    sget-boolean v2, Lcom/micro/util/LogUtils;->allowV:Z

    if-nez v2, :cond_0

    .line 161
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-static {}, Lcom/micro/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 154
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/micro/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 157
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0, p1}, Lcom/micro/util/LogUtils$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-static {v1, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 164
    sget-boolean v2, Lcom/micro/util/LogUtils;->allowW:Z

    if-nez v2, :cond_0

    .line 173
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-static {}, Lcom/micro/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 166
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/micro/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 169
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/micro/util/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 176
    sget-boolean v2, Lcom/micro/util/LogUtils;->allowW:Z

    if-nez v2, :cond_0

    .line 185
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-static {}, Lcom/micro/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 178
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/micro/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 181
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0, p1}, Lcom/micro/util/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 183
    :cond_1
    invoke-static {v1, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 188
    sget-boolean v2, Lcom/micro/util/LogUtils;->allowW:Z

    if-nez v2, :cond_0

    .line 197
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-static {}, Lcom/micro/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 190
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/micro/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 193
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/micro/util/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 201
    sget-boolean v2, Lcom/micro/util/LogUtils;->allowWtf:Z

    if-nez v2, :cond_0

    .line 210
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-static {}, Lcom/micro/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 203
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/micro/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 206
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/micro/util/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 213
    sget-boolean v2, Lcom/micro/util/LogUtils;->allowWtf:Z

    if-nez v2, :cond_0

    .line 222
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-static {}, Lcom/micro/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 215
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/micro/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 218
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0, p1}, Lcom/micro/util/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-static {v1, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 225
    sget-boolean v2, Lcom/micro/util/LogUtils;->allowWtf:Z

    if-nez v2, :cond_0

    .line 234
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-static {}, Lcom/micro/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 227
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/micro/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 230
    sget-object v2, Lcom/micro/util/LogUtils;->customLogger:Lcom/micro/util/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/micro/util/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
