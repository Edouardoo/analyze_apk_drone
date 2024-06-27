.class public Lcom/hfufo/bean/DeviceDesc;
.super Ljava/lang/Object;
.source "DeviceDesc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/bean/DeviceDesc$AppListBean;
    }
.end annotation


# instance fields
.field private app_list:Lcom/hfufo/bean/DeviceDesc$AppListBean;

.field private camera_type:Ljava/lang/String;

.field private ctl_type:Ljava/lang/String;

.field private ctl_typeB:Z

.field private device_type:Ljava/lang/String;

.field private firmware_version:Ljava/lang/String;

.field private front_support:[Ljava/lang/String;

.field private match_app_type:Ljava/lang/String;

.field private netMode:I

.field private photo_size:Ljava/lang/String;

.field private product_type:Ljava/lang/String;

.field private products_model:Ljava/lang/String;

.field private protocol_version:Ljava/lang/String;

.field private rear_support:[Ljava/lang/String;

.field private recordFrontSupport:[Ljava/lang/String;

.field private recordRearSupport:[Ljava/lang/String;

.field private rtspFrontSupport:[Ljava/lang/String;

.field private rtspRearSupport:[Ljava/lang/String;

.field private stream_size:Ljava/lang/String;

.field private support_bumping:Z

.field private support_projection:Z

.field private uuid:Ljava/lang/String;

.field private videc_save:Ljava/lang/String;

.field private videoType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "0"

    iput-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->products_model:Ljava/lang/String;

    .line 26
    const-string v0, "0"

    iput-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->protocol_version:Ljava/lang/String;

    .line 28
    const-string v0, "-1"

    iput-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->stream_size:Ljava/lang/String;

    .line 29
    const-string v0, "-1"

    iput-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->videc_save:Ljava/lang/String;

    .line 30
    const-string v0, "-1"

    iput-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->photo_size:Ljava/lang/String;

    .line 31
    const-string v0, "0"

    iput-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->ctl_type:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/hfufo/bean/DeviceDesc;->ctl_typeB:Z

    .line 39
    const-string v0, "1"

    iput-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->device_type:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/hfufo/bean/DeviceDesc;->videoType:I

    .line 45
    iput v1, p0, Lcom/hfufo/bean/DeviceDesc;->netMode:I

    return-void
.end method


# virtual methods
.method public getApp_list()Lcom/hfufo/bean/DeviceDesc$AppListBean;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->app_list:Lcom/hfufo/bean/DeviceDesc$AppListBean;

    return-object v0
.end method

.method public getCamera_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->camera_type:Ljava/lang/String;

    return-object v0
.end method

.method public getCtl_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->ctl_type:Ljava/lang/String;

    return-object v0
.end method

.method public getCtl_typeB()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceDesc;->ctl_typeB:Z

    return v0
.end method

.method public getDevice_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->device_type:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmware_version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->firmware_version:Ljava/lang/String;

    return-object v0
.end method

.method public getFront_support()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->front_support:[Ljava/lang/String;

    return-object v0
.end method

.method public getMatch_app_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->match_app_type:Ljava/lang/String;

    return-object v0
.end method

.method public getNetMode()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/hfufo/bean/DeviceDesc;->netMode:I

    return v0
.end method

.method public getPhoto_size()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->photo_size:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->product_type:Ljava/lang/String;

    return-object v0
.end method

.method public getProducts_model()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->products_model:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol_version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->protocol_version:Ljava/lang/String;

    return-object v0
.end method

.method public getRear_support()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->rear_support:[Ljava/lang/String;

    return-object v0
.end method

.method public getRecordFrontSupport()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->recordFrontSupport:[Ljava/lang/String;

    return-object v0
.end method

.method public getRecordRearSupport()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->recordRearSupport:[Ljava/lang/String;

    return-object v0
.end method

.method public getRtspFrontSupport()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->rtspFrontSupport:[Ljava/lang/String;

    return-object v0
.end method

.method public getRtspRearSupport()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->rtspRearSupport:[Ljava/lang/String;

    return-object v0
.end method

.method public getStream_size()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->stream_size:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVidec_save()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->videc_save:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoType()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/hfufo/bean/DeviceDesc;->videoType:I

    return v0
.end method

.method public isSupport_bumping()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceDesc;->support_bumping:Z

    return v0
.end method

.method public isSupport_projection()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceDesc;->support_projection:Z

    return v0
.end method

.method public setApp_list(Lcom/hfufo/bean/DeviceDesc$AppListBean;)V
    .locals 0
    .param p1, "app_list"    # Lcom/hfufo/bean/DeviceDesc$AppListBean;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->app_list:Lcom/hfufo/bean/DeviceDesc$AppListBean;

    .line 89
    return-void
.end method

.method public setCamera_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_type"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->camera_type:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setCtl_type(Ljava/lang/String;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 236
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->ctl_type:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->ctl_type:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc;->ctl_type:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/bean/DeviceDesc;->ctl_typeB:Z

    .line 245
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-boolean v2, p0, Lcom/hfufo/bean/DeviceDesc;->ctl_typeB:Z

    goto :goto_0

    .line 244
    :cond_1
    iput-boolean v2, p0, Lcom/hfufo/bean/DeviceDesc;->ctl_typeB:Z

    goto :goto_0
.end method

.method public setDevice_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "device_type"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->device_type:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setFirmware_version(Ljava/lang/String;)V
    .locals 0
    .param p1, "firmware_version"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->firmware_version:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setFront_support([Ljava/lang/String;)V
    .locals 0
    .param p1, "front_support"    # [Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->front_support:[Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setMatch_app_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "match_app_type"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->match_app_type:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setNetMode(I)V
    .locals 0
    .param p1, "netMode"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/hfufo/bean/DeviceDesc;->netMode:I

    .line 145
    return-void
.end method

.method public setPhoto_size(Ljava/lang/String;)V
    .locals 0
    .param p1, "photo_size"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->photo_size:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setProduct_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "product_type"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->product_type:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setProducts_model(Ljava/lang/String;)V
    .locals 0
    .param p1, "products_model"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->products_model:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setProtocol_version(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol_version"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->protocol_version:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setRear_support([Ljava/lang/String;)V
    .locals 0
    .param p1, "rear_support"    # [Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->rear_support:[Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setRecordFrontSupport([Ljava/lang/String;)V
    .locals 0
    .param p1, "recordFrontSupport"    # [Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->recordFrontSupport:[Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setRecordRearSupport([Ljava/lang/String;)V
    .locals 0
    .param p1, "recordRearSupport"    # [Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->recordRearSupport:[Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setRtspFrontSupport([Ljava/lang/String;)V
    .locals 0
    .param p1, "rtspFrontSupport"    # [Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->rtspFrontSupport:[Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setRtspRearSupport([Ljava/lang/String;)V
    .locals 0
    .param p1, "rtspRearSupport"    # [Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->rtspRearSupport:[Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setStream_size(Ljava/lang/String;)V
    .locals 0
    .param p1, "stream_size"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->stream_size:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setSupport_bumping(Z)V
    .locals 0
    .param p1, "support_bumping"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceDesc;->support_bumping:Z

    .line 105
    return-void
.end method

.method public setSupport_projection(Z)V
    .locals 0
    .param p1, "support_projection"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceDesc;->support_projection:Z

    .line 125
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->uuid:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setVidec_save(Ljava/lang/String;)V
    .locals 0
    .param p1, "videc_save"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc;->videc_save:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setVideoType(I)V
    .locals 0
    .param p1, "videoType"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/hfufo/bean/DeviceDesc;->videoType:I

    .line 137
    return-void
.end method
