.class public Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
.super Lcom/koushikdutta/async/http/filter/InflaterInputFilter;
.source "GZIPInputFilter.java"


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8


# instance fields
.field protected crc:Ljava/util/zip/CRC32;

.field mNeedsHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;-><init>(Ljava/util/zip/Inflater;)V

    .line 40
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->mNeedsHeader:Z

    .line 41
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    return-void
.end method

.method static peekShort([BILjava/nio/ByteOrder;)S
    .locals 1

    .line 19
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    .line 20
    aget-byte p2, p0, p1

    shl-int/lit8 p2, p2, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    :goto_0
    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_0
    add-int/lit8 p2, p1, 0x1

    .line 22
    aget-byte p2, p0, p2

    shl-int/lit8 p2, p2, 0x8

    aget-byte p0, p0, p1

    goto :goto_0
.end method

.method public static unsignedToBytes(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2

    .line 50
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->mNeedsHeader:Z

    if-eqz v0, :cond_0

    .line 51
    new-instance p2, Lcom/koushikdutta/async/PushParser;

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/PushParser;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    const/16 v0, 0xa

    .line 52
    new-instance v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter;Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/PushParser;)V

    invoke-virtual {p2, v0, v1}, Lcom/koushikdutta/async/PushParser;->readByteArray(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    goto :goto_0

    .line 141
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    :goto_0
    return-void
.end method
