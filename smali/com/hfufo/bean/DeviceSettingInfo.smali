.class public Lcom/hfufo/bean/DeviceSettingInfo;
.super Ljava/lang/Object;
.source "DeviceSettingInfo.java"


# instance fields
.field private antiTremor:Z

.field private autoShutdown:I

.field private batStatus:I

.field private burstShot:Z

.field private cameraType:I

.field private doubleVideo:Z

.field private frontFormat:I

.field private frontLevel:I

.field private frontRate:I

.field private frontRecordLevel:I

.field private frontSampleRate:I

.field private gravitySensor:I

.field private isExistRearView:Z

.field private isOpenBootSound:Z

.field private isOpenProjection:Z

.field private isRTVoice:Z

.field private keyVoice:Z

.field private lanIndex:I

.field private leftStorage:I

.field private lightFrequece:I

.field private moveCheck:Z

.field private photoDate:Z

.field private photoExp:I

.field private photoIso:I

.field private photoQualityIndex:I

.field private photoReso:I

.field private photoSharpness:I

.field private rearFormat:I

.field private rearLevel:I

.field private rearRate:I

.field private rearRecordLevel:I

.field private rearSampleRate:I

.field private recordState:I

.field private screenOn:I

.field private selfTime:I

.field private totalStorage:I

.field private tvMode:I

.field private videoDate:Z

.field private videoExp:I

.field private videoInv:I

.field private videoLoop:I

.field private videoMic:Z

.field private videoParCar:Z

.field private videoWdr:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x1f40

    const/16 v1, 0x1e

    const/4 v0, 0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->cameraType:I

    .line 119
    iput v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontFormat:I

    .line 122
    iput v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontRate:I

    .line 131
    iput v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearFormat:I

    .line 134
    iput v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearRate:I

    .line 137
    iput v2, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearSampleRate:I

    .line 139
    iput v2, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontSampleRate:I

    return-void
.end method


# virtual methods
.method public getAutoShutdown()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->autoShutdown:I

    return v0
.end method

.method public getBatStatus()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->batStatus:I

    return v0
.end method

.method public getCameraType()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->cameraType:I

    return v0
.end method

.method public getFrontFormat()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontFormat:I

    return v0
.end method

.method public getFrontLevel()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontLevel:I

    return v0
.end method

.method public getFrontRate()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontRate:I

    return v0
.end method

.method public getFrontRecordLevel()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontRecordLevel:I

    return v0
.end method

.method public getFrontSampleRate()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontSampleRate:I

    return v0
.end method

.method public getGravitySensor()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->gravitySensor:I

    return v0
.end method

.method public getLanIndex()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->lanIndex:I

    return v0
.end method

.method public getLeftStorage()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->leftStorage:I

    return v0
.end method

.method public getLightFrequece()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->lightFrequece:I

    return v0
.end method

.method public getPhotoExp()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoExp:I

    return v0
.end method

.method public getPhotoIso()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoIso:I

    return v0
.end method

.method public getPhotoQualityIndex()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoQualityIndex:I

    return v0
.end method

.method public getPhotoReso()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoReso:I

    return v0
.end method

.method public getPhotoSharpness()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoSharpness:I

    return v0
.end method

.method public getRearFormat()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearFormat:I

    return v0
.end method

.method public getRearLevel()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearLevel:I

    return v0
.end method

.method public getRearRate()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearRate:I

    return v0
.end method

.method public getRearRecordLevel()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearRecordLevel:I

    return v0
.end method

.method public getRearSampleRate()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearSampleRate:I

    return v0
.end method

.method public getRecordState()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->recordState:I

    return v0
.end method

.method public getScreenOn()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->screenOn:I

    return v0
.end method

.method public getSelfTime()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->selfTime:I

    return v0
.end method

.method public getTotalStorage()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->totalStorage:I

    return v0
.end method

.method public getTvMode()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->tvMode:I

    return v0
.end method

.method public getVideoExp()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoExp:I

    return v0
.end method

.method public getVideoInv()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoInv:I

    return v0
.end method

.method public getVideoLoop()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoLoop:I

    return v0
.end method

.method public isAntiTremor()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->antiTremor:Z

    return v0
.end method

.method public isBurstShot()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->burstShot:Z

    return v0
.end method

.method public isDoubleVideo()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->doubleVideo:Z

    return v0
.end method

.method public isExistRearView()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->isExistRearView:Z

    return v0
.end method

.method public isKeyVoice()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->keyVoice:Z

    return v0
.end method

.method public isMoveCheck()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->moveCheck:Z

    return v0
.end method

.method public isOpenBootSound()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->isOpenBootSound:Z

    return v0
.end method

.method public isOpenProjection()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->isOpenProjection:Z

    return v0
.end method

.method public isPhotoDate()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoDate:Z

    return v0
.end method

.method public isRTVoice()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->isRTVoice:Z

    return v0
.end method

.method public isVideoDate()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoDate:Z

    return v0
.end method

.method public isVideoMic()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoMic:Z

    return v0
.end method

.method public isVideoParCar()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoParCar:Z

    return v0
.end method

.method public isVideoWdr()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoWdr:Z

    return v0
.end method

.method public setAntiTremor(Z)V
    .locals 0
    .param p1, "antiTremor"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->antiTremor:Z

    .line 157
    return-void
.end method

.method public setAutoShutdown(I)V
    .locals 0
    .param p1, "autoShutdown"    # I

    .prologue
    .line 272
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->autoShutdown:I

    .line 273
    return-void
.end method

.method public setBatStatus(I)V
    .locals 0
    .param p1, "batStatus"    # I

    .prologue
    .line 288
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->batStatus:I

    .line 289
    return-void
.end method

.method public setBurstShot(Z)V
    .locals 0
    .param p1, "burstShot"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->burstShot:Z

    .line 189
    return-void
.end method

.method public setCameraType(I)V
    .locals 0
    .param p1, "cameraType"    # I

    .prologue
    .line 404
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->cameraType:I

    .line 405
    return-void
.end method

.method public setDoubleVideo(Z)V
    .locals 0
    .param p1, "doubleVideo"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->doubleVideo:Z

    .line 253
    return-void
.end method

.method public setExistRearView(Z)V
    .locals 0
    .param p1, "existRearView"    # Z

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->isExistRearView:Z

    .line 397
    return-void
.end method

.method public setFrontFormat(I)V
    .locals 0
    .param p1, "frontFormat"    # I

    .prologue
    .line 420
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontFormat:I

    .line 421
    return-void
.end method

.method public setFrontLevel(I)V
    .locals 0
    .param p1, "frontLevel"    # I

    .prologue
    .line 412
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontLevel:I

    .line 413
    return-void
.end method

.method public setFrontRate(I)V
    .locals 0
    .param p1, "frontRate"    # I

    .prologue
    .line 428
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontRate:I

    .line 429
    return-void
.end method

.method public setFrontRecordLevel(I)V
    .locals 0
    .param p1, "frontRecordLevel"    # I

    .prologue
    .line 460
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontRecordLevel:I

    .line 461
    return-void
.end method

.method public setFrontSampleRate(I)V
    .locals 0
    .param p1, "frontSampleRate"    # I

    .prologue
    .line 532
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontSampleRate:I

    .line 533
    return-void
.end method

.method public setGravitySensor(I)V
    .locals 0
    .param p1, "gravitySensor"    # I

    .prologue
    .line 324
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->gravitySensor:I

    .line 325
    return-void
.end method

.method public setKeyVoice(Z)V
    .locals 0
    .param p1, "keyVoice"    # Z

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->keyVoice:Z

    .line 301
    return-void
.end method

.method public setLanIndex(I)V
    .locals 0
    .param p1, "lanIndex"    # I

    .prologue
    .line 340
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->lanIndex:I

    .line 341
    return-void
.end method

.method public setLeftStorage(I)V
    .locals 0
    .param p1, "leftStorage"    # I

    .prologue
    .line 364
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->leftStorage:I

    .line 365
    return-void
.end method

.method public setLightFrequece(I)V
    .locals 0
    .param p1, "lightFrequece"    # I

    .prologue
    .line 280
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->lightFrequece:I

    .line 281
    return-void
.end method

.method public setMoveCheck(Z)V
    .locals 0
    .param p1, "moveCheck"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->moveCheck:Z

    .line 221
    return-void
.end method

.method public setOpenBootSound(Z)V
    .locals 0
    .param p1, "openBootSound"    # Z

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->isOpenBootSound:Z

    .line 541
    return-void
.end method

.method public setOpenProjection(Z)V
    .locals 0
    .param p1, "openProjection"    # Z

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->isOpenProjection:Z

    .line 381
    return-void
.end method

.method public setPhotoDate(Z)V
    .locals 0
    .param p1, "photoDate"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoDate:Z

    .line 149
    return-void
.end method

.method public setPhotoExp(I)V
    .locals 0
    .param p1, "photoExp"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoExp:I

    .line 161
    return-void
.end method

.method public setPhotoIso(I)V
    .locals 0
    .param p1, "photoIso"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoIso:I

    .line 169
    return-void
.end method

.method public setPhotoQualityIndex(I)V
    .locals 0
    .param p1, "photoQualityIndex"    # I

    .prologue
    .line 348
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoQualityIndex:I

    .line 349
    return-void
.end method

.method public setPhotoReso(I)V
    .locals 0
    .param p1, "photoReso"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoReso:I

    .line 201
    return-void
.end method

.method public setPhotoSharpness(I)V
    .locals 0
    .param p1, "photoSharpness"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoSharpness:I

    .line 177
    return-void
.end method

.method public setRTVoice(Z)V
    .locals 0
    .param p1, "RTVoice"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->isRTVoice:Z

    .line 389
    return-void
.end method

.method public setRearFormat(I)V
    .locals 0
    .param p1, "rearFormat"    # I

    .prologue
    .line 444
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearFormat:I

    .line 445
    return-void
.end method

.method public setRearLevel(I)V
    .locals 0
    .param p1, "rearLevel"    # I

    .prologue
    .line 436
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearLevel:I

    .line 437
    return-void
.end method

.method public setRearRate(I)V
    .locals 0
    .param p1, "rearRate"    # I

    .prologue
    .line 452
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearRate:I

    .line 453
    return-void
.end method

.method public setRearRecordLevel(I)V
    .locals 0
    .param p1, "rearRecordLevel"    # I

    .prologue
    .line 468
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearRecordLevel:I

    .line 469
    return-void
.end method

.method public setRearSampleRate(I)V
    .locals 0
    .param p1, "rearSampleRate"    # I

    .prologue
    .line 524
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearSampleRate:I

    .line 525
    return-void
.end method

.method public setRecordState(I)V
    .locals 0
    .param p1, "recordState"    # I

    .prologue
    .line 372
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->recordState:I

    .line 373
    return-void
.end method

.method public setScreenOn(I)V
    .locals 0
    .param p1, "screenOn"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->screenOn:I

    .line 265
    return-void
.end method

.method public setSelfTime(I)V
    .locals 0
    .param p1, "selfTime"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->selfTime:I

    .line 193
    return-void
.end method

.method public setTotalStorage(I)V
    .locals 0
    .param p1, "totalStorage"    # I

    .prologue
    .line 356
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->totalStorage:I

    .line 357
    return-void
.end method

.method public setTvMode(I)V
    .locals 0
    .param p1, "tvMode"    # I

    .prologue
    .line 256
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->tvMode:I

    .line 257
    return-void
.end method

.method public setVideoDate(Z)V
    .locals 0
    .param p1, "videoDate"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoDate:Z

    .line 317
    return-void
.end method

.method public setVideoExp(I)V
    .locals 0
    .param p1, "videoExp"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoExp:I

    .line 225
    return-void
.end method

.method public setVideoInv(I)V
    .locals 0
    .param p1, "videoInv"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoInv:I

    .line 209
    return-void
.end method

.method public setVideoLoop(I)V
    .locals 0
    .param p1, "videoLoop"    # I

    .prologue
    .line 240
    iput p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoLoop:I

    .line 241
    return-void
.end method

.method public setVideoMic(Z)V
    .locals 0
    .param p1, "videoMic"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoMic:Z

    .line 333
    return-void
.end method

.method public setVideoParCar(Z)V
    .locals 0
    .param p1, "videoParCar"    # Z

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoParCar:Z

    .line 309
    return-void
.end method

.method public setVideoWdr(Z)V
    .locals 0
    .param p1, "videoWdr"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoWdr:Z

    .line 237
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"lanIndex\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->lanIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"photoQualityIndex\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoQualityIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"videoMic\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoMic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"totalStorage\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->totalStorage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"leftStorage\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->leftStorage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"videoParCar\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoParCar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"videoDate\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoDate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"gravitySensor\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->gravitySensor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"keyVoice\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->keyVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"batStatus\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->batStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"lightFrequece\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->lightFrequece:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"autoShutdown\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->autoShutdown:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"screenOn\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->screenOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"tvMode\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->tvMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"doubleVideo\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->doubleVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"videoLoop\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoLoop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"videoWdr\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoWdr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"videoExp\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoExp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"moveCheck\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->moveCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"videoInv\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->videoInv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"photoReso\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoReso:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"selfTime\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->selfTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"burstShot\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->burstShot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"photoSharpness\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoSharpness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"photoIso\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoIso:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"photoExp\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoExp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"antiTremor\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->antiTremor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"photoDate\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->photoDate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"recordState\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->recordState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"isOpenProjection\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->isOpenProjection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"isRTVoice\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->isRTVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"isExistRearView\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->isExistRearView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"cameraType\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->cameraType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"frontRecordLevel\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontRecordLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"frontLevel\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"frontFormat\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"frontRate\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"rearRecordLevel\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearRecordLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"rearLevel\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"rearFormat\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"rearRate\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"rearSampleRate\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->rearSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\"frontSampleRate\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/bean/DeviceSettingInfo;->frontSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
