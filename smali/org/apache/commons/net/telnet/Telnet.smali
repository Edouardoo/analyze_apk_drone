.class Lorg/apache/commons/net/telnet/Telnet;
.super Lorg/apache/commons/net/SocketClient;
.source "SourceFile"


# static fields
.field static final DEFAULT_PORT:I = 0x17

.field protected static final TERMINAL_TYPE:I = 0x18

.field protected static final TERMINAL_TYPE_IS:I = 0x0

.field protected static final TERMINAL_TYPE_SEND:I = 0x1

.field static final _COMMAND_AYT:[B

.field static final _COMMAND_DO:[B

.field static final _COMMAND_DONT:[B

.field static final _COMMAND_IS:[B

.field static final _COMMAND_SB:[B

.field static final _COMMAND_SE:[B

.field static final _COMMAND_WILL:[B

.field static final _COMMAND_WONT:[B

.field static final _DO_MASK:I = 0x2

.field static final _REQUESTED_DO_MASK:I = 0x8

.field static final _REQUESTED_WILL_MASK:I = 0x4

.field static final _WILL_MASK:I = 0x1

.field static final debug:Z

.field static final debugoptions:Z


# instance fields
.field private __notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

.field _doResponse:[I

.field _options:[I

.field _willResponse:[I

.field private volatile aytFlag:Z

.field private final aytMonitor:Ljava/lang/Object;

.field private final optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

.field private volatile spyStream:Ljava/io/OutputStream;

.field private terminalType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 34
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_DO:[B

    .line 38
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_DONT:[B

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_WILL:[B

    .line 46
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_WONT:[B

    .line 50
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SB:[B

    .line 54
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SE:[B

    .line 85
    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_IS:[B

    .line 107
    new-array v0, v1, [B

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_AYT:[B

    return-void

    .line 34
    :array_0
    .array-data 1
        -0x1t
        -0x3t
    .end array-data

    .line 38
    nop

    :array_1
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    .line 42
    nop

    :array_2
    .array-data 1
        -0x1t
        -0x5t
    .end array-data

    .line 46
    nop

    :array_3
    .array-data 1
        -0x1t
        -0x4t
    .end array-data

    .line 50
    nop

    :array_4
    .array-data 1
        -0x1t
        -0x6t
    .end array-data

    .line 54
    nop

    :array_5
    .array-data 1
        -0x1t
        -0x10t
    .end array-data

    .line 85
    nop

    :array_6
    .array-data 1
        0x18t
        0x0t
    .end array-data

    .line 107
    nop

    :array_7
    .array-data 1
        -0x1t
        -0xat
    .end array-data
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x100

    .line 135
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 92
    iput-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    .line 125
    iput-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 130
    iput-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 136
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->setDefaultPort(I)V

    .line 137
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    .line 138
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    .line 139
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    .line 140
    new-array v0, v1, [Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 142
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x100

    .line 151
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 92
    iput-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    .line 125
    iput-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 130
    iput-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 152
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->setDefaultPort(I)V

    .line 153
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    .line 154
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    .line 155
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    .line 156
    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    .line 157
    new-array v0, v1, [Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 159
    return-void
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x100

    const/4 v0, 0x0

    .line 831
    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 833
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aput v0, v2, v1

    .line 834
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aput v0, v2, v1

    .line 835
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aput v0, v2, v1

    .line 836
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 838
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setDo(Z)V

    .line 839
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setWill(Z)V

    .line 831
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 844
    :cond_1
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    .line 845
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_input_:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_input_:Ljava/io/InputStream;

    .line 846
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    .line 849
    :goto_1
    if-ge v0, v3, :cond_4

    .line 851
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 853
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitLocal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 855
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getOptionCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/telnet/Telnet;->_requestWill(I)V

    .line 858
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitRemote()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 860
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getOptionCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/telnet/Telnet;->_requestDo(I)V

    .line 849
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 865
    :cond_4
    return-void
.end method

.method final declared-synchronized _processAYTResponse()V
    .locals 2

    .prologue
    .line 811
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    if-nez v0, :cond_0

    .line 813
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 815
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    .line 816
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 817
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 819
    :cond_0
    monitor-exit p0

    return-void

    .line 817
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 811
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method _processCommand(I)V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    .line 407
    :cond_0
    return-void
.end method

.method _processDo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 423
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    invoke-interface {v1, v0, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    .line 430
    :cond_0
    const/4 v1, 0x0

    .line 434
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v2, v2, p1

    if-eqz v2, :cond_4

    .line 436
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getAcceptLocal()Z

    move-result v0

    .line 454
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v1, v1, p1

    if-lez v1, :cond_2

    .line 456
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p1

    .line 457
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v1, v1, p1

    if-lez v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWill(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 459
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p1

    .line 463
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v1, v1, p1

    if-nez v1, :cond_3

    .line 465
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWont(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 477
    if-eqz v0, :cond_6

    .line 479
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantWill(I)V

    .line 480
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendWill(I)V

    .line 503
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWill(I)V

    .line 504
    return-void

    .line 442
    :cond_4
    const/16 v2, 0x18

    if-ne p1, v2, :cond_5

    .line 444
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    .line 484
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 485
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendWont(I)V

    goto :goto_1
.end method

.method _processDont(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    .line 525
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v0, v0, p1

    if-lez v0, :cond_1

    .line 527
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 528
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v0, v0, p1

    if-lez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWont(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 534
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWill(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 546
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWill(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWill(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendWont(I)V

    .line 551
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantWont(I)V

    .line 555
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWont(I)V

    .line 556
    return-void
.end method

.method _processSuboption([II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 696
    if-lez p2, :cond_0

    .line 698
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget v1, p1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget v1, p1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->answerSubnegotiation([II)[I

    move-result-object v0

    .line 703
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    if-le p2, v3, :cond_0

    .line 717
    aget v0, p1, v2

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    aget v0, p1, v3

    if-ne v0, v3, :cond_0

    .line 720
    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/Telnet;->_sendTerminalType()V

    goto :goto_0
.end method

.method _processWill(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    .line 580
    :cond_0
    const/4 v0, 0x0

    .line 583
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 585
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getAcceptRemote()Z

    move-result v0

    .line 589
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v1, p1

    if-lez v1, :cond_2

    .line 591
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p1

    .line 592
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v1, p1

    if-lez v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDo(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p1

    .line 598
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v1, p1

    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDont(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 610
    if-eqz v0, :cond_4

    .line 612
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantDo(I)V

    .line 613
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendDo(I)V

    .line 622
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setDo(I)V

    .line 623
    return-void

    .line 617
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 618
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendDont(I)V

    goto :goto_0
.end method

.method _processWont(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    .line 646
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v0, v0, p1

    if-lez v0, :cond_1

    .line 648
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 649
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v0, v0, p1

    if-lez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDont(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 655
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 667
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDo(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 669
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendDont(I)V

    .line 672
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantDont(I)V

    .line 676
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setDont(I)V

    .line 677
    return-void
.end method

.method _registerSpyStream(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 1178
    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 1179
    return-void
.end method

.method final declared-synchronized _requestDo(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 897
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDo(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 902
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantDo(I)V

    .line 903
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 904
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendDo(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 897
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _requestDont(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 937
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDont(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDont(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 945
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 942
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantDont(I)V

    .line 943
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 944
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendDont(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _requestWill(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 978
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWill(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWill(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 986
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 983
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantWill(I)V

    .line 984
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 985
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendWill(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 978
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _requestWont(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1018
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWont(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWont(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1026
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1023
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantWont(I)V

    .line 1024
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 1025
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendWont(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1018
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method _requestedDo(I)Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _requestedDont(I)Z
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _requestedWill(I)Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _requestedWont(I)Z
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWill(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final _sendAYT(J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1058
    .line 1059
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 1061
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1063
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    .line 1064
    iget-object v3, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v4, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_AYT:[B

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1065
    iget-object v3, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 1066
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1067
    :try_start_2
    iget-object v3, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 1068
    iget-boolean v3, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    if-nez v3, :cond_0

    .line 1071
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    .line 1077
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1079
    return v0

    .line 1066
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1077
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_0
    move v0, v1

    .line 1075
    goto :goto_0
.end method

.method final declared-synchronized _sendByte(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1037
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1040
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_spyWrite(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    monitor-exit p0

    return-void

    .line 1037
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _sendCommand(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 800
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 801
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 802
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    monitor-exit p0

    return-void

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _sendDo(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 880
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_DO:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 881
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 884
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    monitor-exit p0

    return-void

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _sendDont(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 920
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_DONT:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 921
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 924
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    monitor-exit p0

    return-void

    .line 920
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _sendSubnegotiation([I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 772
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SB:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 774
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget v2, p1, v0

    .line 776
    int-to-byte v2, v2

    .line 777
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 778
    iget-object v3, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 780
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 774
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 782
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 785
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    :cond_2
    monitor-exit p0

    return-void

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _sendTerminalType()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SB:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 743
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_IS:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 744
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/Telnet;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 745
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 746
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    :cond_0
    monitor-exit p0

    return-void

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _sendWill(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 961
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_WILL:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 962
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 965
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    monitor-exit p0

    return-void

    .line 961
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _sendWont(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1001
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_WONT:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1002
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1005
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    monitor-exit p0

    return-void

    .line 1001
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method _setDo(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    .line 298
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setDo(Z)V

    .line 304
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->startSubnegotiationRemote()[I

    move-result-object v0

    .line 307
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V

    .line 314
    :cond_0
    return-void
.end method

.method _setDont(I)V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x3

    aput v1, v0, p1

    .line 363
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setDo(Z)V

    .line 368
    :cond_0
    return-void
.end method

.method _setWantDo(I)V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x8

    aput v1, v0, p1

    .line 334
    return-void
.end method

.method _setWantDont(I)V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x9

    aput v1, v0, p1

    .line 388
    return-void
.end method

.method _setWantWill(I)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x4

    aput v1, v0, p1

    .line 324
    return-void
.end method

.method _setWantWont(I)V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x5

    aput v1, v0, p1

    .line 378
    return-void
.end method

.method _setWill(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 269
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWill(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setWill(Z)V

    .line 275
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->startSubnegotiationLocal()[I

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V

    .line 285
    :cond_0
    return-void
.end method

.method _setWont(I)V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x2

    aput v1, v0, p1

    .line 346
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setWill(Z)V

    .line 351
    :cond_0
    return-void
.end method

.method _spyRead(I)V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 1197
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 1198
    if-eqz v0, :cond_1

    .line 1202
    if-eq p1, v1, :cond_1

    .line 1204
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 1206
    const/16 v1, 0xd

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1208
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1209
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1217
    :cond_1
    :goto_0
    return-void

    .line 1212
    :catch_0
    move-exception v0

    .line 1214
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method _spyWrite(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1226
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1229
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 1230
    if-eqz v0, :cond_1

    .line 1234
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1235
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    :cond_1
    :goto_0
    return-void

    .line 1237
    :catch_0
    move-exception v0

    .line 1239
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method _stateIsDo(I)Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _stateIsDont(I)Z
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDo(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _stateIsWill(I)Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _stateIsWont(I)Z
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWill(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _stopSpyStream()V
    .locals 1

    .prologue
    .line 1187
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 1188
    return-void
.end method

.method addOptionHandler(Lorg/apache/commons/net/telnet/TelnetOptionHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1095
    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getOptionCode()I

    move-result v0

    .line 1096
    invoke-static {v0}, Lorg/apache/commons/net/telnet/TelnetOption;->isValidOption(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1098
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 1100
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aput-object p1, v1, v0

    .line 1101
    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/Telnet;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1103
    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitLocal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1105
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_requestWill(I)V

    .line 1108
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitRemote()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1110
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_requestDo(I)V

    .line 1125
    :cond_1
    return-void

    .line 1116
    :cond_2
    new-instance v1, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v2, "Already registered option"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1122
    :cond_3
    new-instance v1, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v2, "Invalid Option Code"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method deleteOptionHandler(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1137
    invoke-static {p1}, Lorg/apache/commons/net/telnet/TelnetOption;->isValidOption(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1139
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 1141
    new-instance v0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v1, "Unregistered option"

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1146
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    .line 1147
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .line 1149
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getWill()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1151
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestWont(I)V

    .line 1154
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getDo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1156
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestDont(I)V

    .line 1165
    :cond_2
    return-void

    .line 1162
    :cond_3
    new-instance v0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v1, "Invalid Option Code"

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public registerNotifHandler(Lorg/apache/commons/net/telnet/TelnetNotificationHandler;)V
    .locals 0

    .prologue
    .line 1254
    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 1255
    return-void
.end method

.method public unregisterNotifHandler()V
    .locals 1

    .prologue
    .line 1263
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 1264
    return-void
.end method
