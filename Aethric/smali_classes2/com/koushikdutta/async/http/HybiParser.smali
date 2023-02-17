.class abstract Lcom/koushikdutta/async/http/HybiParser;
.super Ljava/lang/Object;
.source "HybiParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/HybiParser$ProtocolError;
    }
.end annotation


# static fields
.field private static final BASE:J = 0x2L

.field private static final BYTE:I = 0xff

.field private static final FIN:I = 0x80

.field private static final FRAGMENTED_OPCODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LENGTH:I = 0x7f

.field private static final MASK:I = 0x80

.field private static final MODE_BINARY:I = 0x2

.field private static final MODE_TEXT:I = 0x1

.field private static final OPCODE:I = 0xf

.field private static final OPCODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP_BINARY:I = 0x2

.field private static final OP_CLOSE:I = 0x8

.field private static final OP_CONTINUATION:I = 0x0

.field private static final OP_PING:I = 0x9

.field private static final OP_PONG:I = 0xa

.field private static final OP_TEXT:I = 0x1

.field private static final RSV1:I = 0x40

.field private static final RSV2:I = 0x20

.field private static final RSV3:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HybiParser"

.field private static final _2_TO_16_:J = 0x10000L

.field private static final _2_TO_24:J = 0x1000000L

.field private static final _2_TO_32_:J = 0x100000000L

.field private static final _2_TO_40_:J = 0x10000000000L

.field private static final _2_TO_48_:J = 0x1000000000000L

.field private static final _2_TO_56_:J = 0x100000000000000L

.field private static final _2_TO_8_:J = 0x100L


# instance fields
.field private mBuffer:Ljava/io/ByteArrayOutputStream;

.field private mClosed:Z

.field private mDeflate:Z

.field private mDeflated:Z

.field private mFinal:Z

.field private mInflateBuffer:[B

.field private mInflater:Ljava/util/zip/Inflater;

.field private mLength:I

.field private mLengthSize:I

.field private mMask:[B

.field private mMasked:Z

.field private mMasking:Z

.field private mMode:I

.field private mOpcode:I

.field private mPayload:[B

.field private mReader:Lcom/koushikdutta/async/DataEmitterReader;

.field private mStage:I

.field mStage0:Lcom/koushikdutta/async/callback/DataCallback;

.field mStage1:Lcom/koushikdutta/async/callback/DataCallback;

.field mStage2:Lcom/koushikdutta/async/callback/DataCallback;

.field mStage3:Lcom/koushikdutta/async/callback/DataCallback;

.field mStage4:Lcom/koushikdutta/async/callback/DataCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v3, 0x1

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v5, 0x2

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/16 v7, 0x8

    .line 96
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v0, v8

    const/16 v7, 0x9

    .line 97
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x4

    aput-object v7, v0, v9

    const/16 v7, 0xa

    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x5

    aput-object v7, v0, v9

    .line 92
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/HybiParser;->OPCODES:Ljava/util/List;

    new-array v0, v8, [Ljava/lang/Integer;

    aput-object v2, v0, v1

    aput-object v4, v0, v3

    aput-object v6, v0, v5

    .line 101
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/HybiParser;->FRAGMENTED_OPCODES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/DataEmitter;)V
    .locals 3

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mMasking:Z

    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mDeflate:Z

    new-array v2, v1, [B

    .line 64
    iput-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mMask:[B

    new-array v2, v1, [B

    .line 65
    iput-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mPayload:[B

    .line 67
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mClosed:Z

    .line 69
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    .line 70
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflater:Ljava/util/zip/Inflater;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 71
    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflateBuffer:[B

    .line 144
    new-instance v0, Lcom/koushikdutta/async/http/HybiParser$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/HybiParser$1;-><init>(Lcom/koushikdutta/async/http/HybiParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage0:Lcom/koushikdutta/async/callback/DataCallback;

    .line 158
    new-instance v0, Lcom/koushikdutta/async/http/HybiParser$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/HybiParser$2;-><init>(Lcom/koushikdutta/async/http/HybiParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage1:Lcom/koushikdutta/async/callback/DataCallback;

    .line 166
    new-instance v0, Lcom/koushikdutta/async/http/HybiParser$3;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/HybiParser$3;-><init>(Lcom/koushikdutta/async/http/HybiParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage2:Lcom/koushikdutta/async/callback/DataCallback;

    .line 182
    new-instance v0, Lcom/koushikdutta/async/http/HybiParser$4;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/HybiParser$4;-><init>(Lcom/koushikdutta/async/http/HybiParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage3:Lcom/koushikdutta/async/callback/DataCallback;

    .line 192
    new-instance v0, Lcom/koushikdutta/async/http/HybiParser$5;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/HybiParser$5;-><init>(Lcom/koushikdutta/async/http/HybiParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage4:Lcom/koushikdutta/async/callback/DataCallback;

    .line 229
    new-instance v0, Lcom/koushikdutta/async/DataEmitterReader;

    invoke-direct {v0}, Lcom/koushikdutta/async/DataEmitterReader;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mReader:Lcom/koushikdutta/async/DataEmitterReader;

    .line 247
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 248
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/HybiParser;->parse()V

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/HybiParser;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/http/HybiParser$ProtocolError;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/HybiParser;->parseOpcode(B)V

    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/HybiParser;B)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/HybiParser;->parseLength(B)V

    return-void
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/HybiParser;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/koushikdutta/async/http/HybiParser;->mLengthSize:I

    return p0
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/http/HybiParser;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/http/HybiParser$ProtocolError;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/HybiParser;->parseExtendedLength([B)V

    return-void
.end method

.method static synthetic access$400(Lcom/koushikdutta/async/http/HybiParser;)[B
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/koushikdutta/async/http/HybiParser;->mMask:[B

    return-object p0
.end method

.method static synthetic access$402(Lcom/koushikdutta/async/http/HybiParser;[B)[B
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mMask:[B

    return-object p1
.end method

.method static synthetic access$502(Lcom/koushikdutta/async/http/HybiParser;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage:I

    return p1
.end method

.method static synthetic access$600(Lcom/koushikdutta/async/http/HybiParser;)[B
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/koushikdutta/async/http/HybiParser;->mPayload:[B

    return-object p0
.end method

.method static synthetic access$602(Lcom/koushikdutta/async/http/HybiParser;[B)[B
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mPayload:[B

    return-object p1
.end method

.method static synthetic access$700(Lcom/koushikdutta/async/http/HybiParser;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/koushikdutta/async/http/HybiParser;->mLength:I

    return p0
.end method

.method static synthetic access$800(Lcom/koushikdutta/async/http/HybiParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/koushikdutta/async/http/HybiParser;->emitFrame()V

    return-void
.end method

.method private static byteArrayToLong([BII)J
    .locals 5

    .line 524
    array-length v0, p0

    if-lt v0, p2, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x8

    add-int v4, v2, p1

    .line 530
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int v3, v4, v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    .line 525
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length must be less than or equal to b.length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private decode(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 482
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 484
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private emitFrame()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mPayload:[B

    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mMask:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/http/HybiParser;->mask([B[BI)[B

    move-result-object v0

    .line 398
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mDeflated:Z

    if-eqz v1, :cond_0

    .line 400
    :try_start_0
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/HybiParser;->inflate([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid deflated data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    :goto_0
    iget v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mOpcode:I

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 408
    iget v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mMode:I

    if-eqz v1, :cond_2

    .line 411
    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 412
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mFinal:Z

    if-eqz v0, :cond_d

    .line 413
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 414
    iget v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mMode:I

    if-ne v1, v3, :cond_1

    .line 415
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/HybiParser;->onMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 417
    :cond_1
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/HybiParser;->onMessage([B)V

    .line 419
    :goto_1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/HybiParser;->reset()V

    goto/16 :goto_3

    .line 409
    :cond_2
    new-instance v0, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;

    const-string v1, "Mode was not set."

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ne v1, v3, :cond_5

    .line 423
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mFinal:Z

    if-eqz v1, :cond_4

    .line 424
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/HybiParser;->onMessage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 427
    :cond_4
    iput v3, p0, Lcom/koushikdutta/async/http/HybiParser;->mMode:I

    .line 428
    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_3

    :cond_5
    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 432
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mFinal:Z

    if-eqz v1, :cond_6

    .line 433
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/HybiParser;->onMessage([B)V

    goto :goto_3

    .line 435
    :cond_6
    iput v4, p0, Lcom/koushikdutta/async/http/HybiParser;->mMode:I

    .line 436
    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_3

    :cond_7
    const/16 v5, 0x8

    if-ne v1, v5, :cond_a

    .line 440
    array-length v1, v0

    if-lt v1, v4, :cond_8

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v1

    .line 441
    :cond_8
    array-length v1, v0

    if-le v1, v4, :cond_9

    invoke-direct {p0, v0, v4}, Lcom/koushikdutta/async/http/HybiParser;->slice([BI)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    .line 443
    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/koushikdutta/async/http/HybiParser;->onDisconnect(ILjava/lang/String;)V

    goto :goto_3

    :cond_a
    const/16 v2, 0x9

    const/16 v3, 0xa

    if-ne v1, v2, :cond_c

    .line 446
    array-length v1, v0

    const/16 v2, 0x7d

    if-gt v1, v2, :cond_b

    .line 448
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 449
    invoke-direct {p0, v3, v0, v2}, Lcom/koushikdutta/async/http/HybiParser;->frame(I[BI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/HybiParser;->sendFrame([B)V

    .line 450
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/HybiParser;->onPing(Ljava/lang/String;)V

    goto :goto_3

    .line 446
    :cond_b
    new-instance v0, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;

    const-string v1, "Ping payload too large"

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-ne v1, v3, :cond_d

    .line 452
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/HybiParser;->onPong(Ljava/lang/String;)V

    :cond_d
    :goto_3
    return-void
.end method

.method private encode([B)Ljava/lang/String;
    .locals 2

    .line 474
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 476
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private frame(ILjava/lang/String;I)[B
    .locals 0

    .line 335
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/HybiParser;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/HybiParser;->frame(I[BI)[B

    move-result-object p1

    return-object p1
.end method

.method private frame(I[BI)[B
    .locals 6

    .line 323
    array-length v5, p2

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/HybiParser;->frame(I[BIII)[B

    move-result-object p1

    return-object p1
.end method

.method private frame(I[BIII)[B
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 339
    iget-boolean v3, v0, Lcom/koushikdutta/async/http/HybiParser;->mClosed:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lez v1, :cond_1

    const/4 v5, 0x2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    add-int v6, p5, v5

    sub-int/2addr v6, v2

    const v7, 0xffff

    const/16 v8, 0x7d

    const/4 v9, 0x4

    if-gt v6, v8, :cond_2

    const/4 v10, 0x2

    goto :goto_1

    :cond_2
    if-gt v6, v7, :cond_3

    const/4 v10, 0x4

    goto :goto_1

    :cond_3
    const/16 v10, 0xa

    .line 346
    :goto_1
    iget-boolean v11, v0, Lcom/koushikdutta/async/http/HybiParser;->mMasking:Z

    if-eqz v11, :cond_4

    const/4 v11, 0x4

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    add-int/2addr v11, v10

    .line 347
    iget-boolean v12, v0, Lcom/koushikdutta/async/http/HybiParser;->mMasking:Z

    if-eqz v12, :cond_5

    const/16 v12, 0x80

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    add-int v13, v6, v11

    .line 348
    new-array v13, v13, [B

    move/from16 v14, p1

    int-to-byte v14, v14

    or-int/lit8 v14, v14, -0x80

    int-to-byte v14, v14

    .line 350
    aput-byte v14, v13, v4

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-gt v6, v8, :cond_6

    or-int/2addr v6, v12

    int-to-byte v6, v6

    .line 353
    aput-byte v6, v13, v15

    :goto_4
    move/from16 v20, v5

    goto :goto_5

    :cond_6
    if-gt v6, v7, :cond_7

    or-int/lit8 v7, v12, 0x7e

    int-to-byte v7, v7

    .line 355
    aput-byte v7, v13, v15

    .line 356
    div-int/lit16 v7, v6, 0x100

    int-to-byte v7, v7

    aput-byte v7, v13, v3

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 357
    aput-byte v6, v13, v14

    goto :goto_4

    :cond_7
    or-int/lit8 v7, v12, 0x7f

    int-to-byte v7, v7

    .line 360
    aput-byte v7, v13, v15

    int-to-long v7, v6

    const-wide/high16 v16, 0x100000000000000L

    .line 361
    div-long v16, v7, v16

    const-wide/16 v18, 0xff

    move/from16 v20, v5

    and-long v4, v16, v18

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v13, v3

    const-wide/high16 v4, 0x1000000000000L

    .line 362
    div-long v4, v7, v4

    and-long v4, v4, v18

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v13, v14

    const-wide v4, 0x10000000000L

    .line 363
    div-long v4, v7, v4

    and-long v4, v4, v18

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v13, v9

    const/4 v4, 0x5

    const-wide v16, 0x100000000L

    .line 364
    div-long v16, v7, v16

    and-long v14, v16, v18

    long-to-int v15, v14

    int-to-byte v14, v15

    aput-byte v14, v13, v4

    const/4 v4, 0x6

    const-wide/32 v14, 0x1000000

    .line 365
    div-long v14, v7, v14

    and-long v14, v14, v18

    long-to-int v15, v14

    int-to-byte v14, v15

    aput-byte v14, v13, v4

    const/4 v4, 0x7

    const-wide/32 v14, 0x10000

    .line 366
    div-long v14, v7, v14

    and-long v14, v14, v18

    long-to-int v15, v14

    int-to-byte v14, v15

    aput-byte v14, v13, v4

    const/16 v4, 0x8

    const-wide/16 v14, 0x100

    .line 367
    div-long/2addr v7, v14

    and-long v7, v7, v18

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v13, v4

    const/16 v4, 0x9

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 368
    aput-byte v6, v13, v4

    :goto_5
    if-lez v1, :cond_8

    .line 372
    div-int/lit16 v4, v1, 0x100

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v13, v11

    add-int/lit8 v4, v11, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 373
    aput-byte v1, v13, v4

    :cond_8
    add-int v1, v11, v20

    sub-int v4, p5, v2

    move-object/from16 v6, p2

    .line 376
    invoke-static {v6, v2, v13, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    iget-boolean v1, v0, Lcom/koushikdutta/async/http/HybiParser;->mMasking:Z

    if-eqz v1, :cond_9

    new-array v1, v9, [B

    .line 380
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v14, 0x4070000000000000L    # 256.0

    mul-double v6, v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    int-to-byte v2, v2

    const/4 v4, 0x0

    aput-byte v2, v1, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double v6, v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 381
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double v4, v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double v2, v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    const/4 v2, 0x0

    .line 383
    invoke-static {v1, v2, v13, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    invoke-static {v13, v1, v11}, Lcom/koushikdutta/async/http/HybiParser;->mask([B[BI)[B

    :cond_9
    return-object v13
.end method

.method private getInteger([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/http/HybiParser$ProtocolError;
        }
    .end annotation

    .line 489
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/koushikdutta/async/http/HybiParser;->byteArrayToLong([BII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    long-to-int p1, v0

    return p1

    .line 491
    :cond_0
    new-instance p1, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private inflate([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 122
    :goto_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflater:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflater:Ljava/util/zip/Inflater;

    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflateBuffer:[B

    invoke-virtual {p1, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result p1

    .line 124
    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflateBuffer:[B

    invoke-virtual {v0, v2, v1, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflater:Ljava/util/zip/Inflater;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-virtual {p1, v2}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 128
    :goto_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflater:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result p1

    if-nez p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflater:Ljava/util/zip/Inflater;

    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflateBuffer:[B

    invoke-virtual {p1, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result p1

    .line 130
    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflateBuffer:[B

    invoke-virtual {v0, v2, v1, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private static mask([B[BI)[B
    .locals 4

    .line 110
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    array-length v1, p0

    sub-int/2addr v1, p2

    if-ge v0, v1, :cond_1

    add-int v1, p2, v0

    .line 113
    aget-byte v2, p0, v1

    rem-int/lit8 v3, v0, 0x4

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private parseExtendedLength([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/http/HybiParser$ProtocolError;
        }
    .end annotation

    .line 290
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/HybiParser;->getInteger([B)I

    move-result p1

    iput p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mLength:I

    .line 291
    iget-boolean p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mMasked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage:I

    return-void
.end method

.method private parseLength(B)V
    .locals 2

    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 278
    :goto_0
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mMasked:Z

    and-int/lit8 p1, p1, 0x7f

    .line 279
    iput p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mLength:I

    if-ltz p1, :cond_2

    const/16 v1, 0x7d

    if-gt p1, v1, :cond_2

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    .line 282
    :goto_1
    iput p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage:I

    goto :goto_3

    .line 284
    :cond_2
    iget p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mLength:I

    const/16 v0, 0x7e

    const/4 v1, 0x2

    if-ne p1, v0, :cond_3

    const/4 p1, 0x2

    goto :goto_2

    :cond_3
    const/16 p1, 0x8

    :goto_2
    iput p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mLengthSize:I

    .line 285
    iput v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage:I

    :goto_3
    return-void
.end method

.method private parseOpcode(B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/http/HybiParser$ProtocolError;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/lit8 v4, p1, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 256
    :goto_2
    iget-boolean v5, p0, Lcom/koushikdutta/async/http/HybiParser;->mDeflate:Z

    if-nez v5, :cond_3

    if-nez v0, :cond_8

    :cond_3
    if-nez v1, :cond_8

    if-nez v4, :cond_8

    and-int/lit16 v1, p1, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 260
    :goto_3
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mFinal:Z

    and-int/lit8 p1, p1, 0xf

    .line 261
    iput p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mOpcode:I

    .line 262
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mDeflated:Z

    new-array v0, v3, [B

    .line 263
    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mMask:[B

    new-array v0, v3, [B

    .line 264
    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mPayload:[B

    .line 266
    sget-object v0, Lcom/koushikdutta/async/http/HybiParser;->OPCODES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 270
    sget-object p1, Lcom/koushikdutta/async/http/HybiParser;->FRAGMENTED_OPCODES:Ljava/util/List;

    iget v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mOpcode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mFinal:Z

    if-eqz p1, :cond_5

    goto :goto_4

    .line 271
    :cond_5
    new-instance p1, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;

    const-string v0, "Expected non-final packet"

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_6
    :goto_4
    iput v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage:I

    return-void

    .line 267
    :cond_7
    new-instance p1, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;

    const-string v0, "Bad opcode"

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_8
    new-instance p1, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;

    const-string v0, "RSV not zero"

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 468
    iput v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mMode:I

    .line 469
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method private slice([BI)[B
    .locals 3

    .line 497
    array-length v0, p1

    sub-int/2addr v0, p2

    new-array v0, v0, [B

    .line 498
    array-length v1, p1

    sub-int/2addr v1, p2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .locals 1

    .line 391
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mClosed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 392
    invoke-direct {p0, v0, p2, p1}, Lcom/koushikdutta/async/http/HybiParser;->frame(ILjava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/HybiParser;->sendFrame([B)V

    const/4 p1, 0x1

    .line 393
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mClosed:Z

    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflater:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    .line 508
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HybiParser"

    const-string v2, "inflater.end failed"

    .line 510
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public frame(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 295
    invoke-direct {p0, v0, p1, v1}, Lcom/koushikdutta/async/http/HybiParser;->frame(ILjava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public frame([B)[B
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 299
    invoke-direct {p0, v0, p1, v1}, Lcom/koushikdutta/async/http/HybiParser;->frame(I[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public frame([BII)[B
    .locals 6

    const/4 v1, 0x2

    const/4 v3, -0x1

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    .line 303
    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/HybiParser;->frame(I[BIII)[B

    move-result-object p1

    return-object p1
.end method

.method protected abstract onDisconnect(ILjava/lang/String;)V
.end method

.method protected abstract onMessage(Ljava/lang/String;)V
.end method

.method protected abstract onMessage([B)V
.end method

.method protected abstract onPing(Ljava/lang/String;)V
.end method

.method protected abstract onPong(Ljava/lang/String;)V
.end method

.method parse()V
    .locals 3

    .line 210
    iget v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mReader:Lcom/koushikdutta/async/DataEmitterReader;

    iget v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mLength:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage4:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mReader:Lcom/koushikdutta/async/DataEmitterReader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage3:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mReader:Lcom/koushikdutta/async/DataEmitterReader;

    iget v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mLengthSize:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage2:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_0

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mReader:Lcom/koushikdutta/async/DataEmitterReader;

    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage1:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_0

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mReader:Lcom/koushikdutta/async/DataEmitterReader;

    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage0:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    :goto_0
    return-void
.end method

.method public pingFrame(Ljava/lang/String;)[B
    .locals 2

    const/16 v0, 0x9

    const/4 v1, -0x1

    .line 307
    invoke-direct {p0, v0, p1, v1}, Lcom/koushikdutta/async/http/HybiParser;->frame(ILjava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public pongFrame(Ljava/lang/String;)[B
    .locals 2

    const/16 v0, 0xa

    const/4 v1, -0x1

    .line 311
    invoke-direct {p0, v0, p1, v1}, Lcom/koushikdutta/async/http/HybiParser;->frame(ILjava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method protected abstract report(Ljava/lang/Exception;)V
.end method

.method protected abstract sendFrame([B)V
.end method

.method public setDeflate(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mDeflate:Z

    return-void
.end method

.method public setMasking(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mMasking:Z

    return-void
.end method
