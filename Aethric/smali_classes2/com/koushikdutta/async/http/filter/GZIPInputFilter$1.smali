.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;
.super Ljava/lang/Object;
.source "GZIPInputFilter.java"

# interfaces
.implements Lcom/koushikdutta/async/PushParser$ParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/PushParser$ParseCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field flags:I

.field hcrc:Z

.field final synthetic this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

.field final synthetic val$emitter:Lcom/koushikdutta/async/DataEmitter;

.field final synthetic val$parser:Lcom/koushikdutta/async/PushParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter;Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/PushParser;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iput-object p2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    iput-object p3, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Lcom/koushikdutta/async/PushParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->next()V

    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->done()V

    return-void
.end method

.method private done()V
    .locals 3

    .line 119
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Lcom/koushikdutta/async/PushParser;

    const/4 v1, 0x2

    new-instance v2, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/PushParser;->readByteArray(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->mNeedsHeader:Z

    .line 135
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    :goto_0
    return-void
.end method

.method private next()V
    .locals 5

    .line 91
    new-instance v0, Lcom/koushikdutta/async/PushParser;

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/PushParser;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    .line 92
    new-instance v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    .line 106
    iget v2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->flags:I

    and-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {v0, v4, v1}, Lcom/koushikdutta/async/PushParser;->until(BLcom/koushikdutta/async/callback/DataCallback;)Lcom/koushikdutta/async/PushParser;

    return-void

    :cond_0
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {v0, v4, v1}, Lcom/koushikdutta/async/PushParser;->until(BLcom/koushikdutta/async/callback/DataCallback;)Lcom/koushikdutta/async/PushParser;

    return-void

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->done()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parsed(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->parsed([B)V

    return-void
.end method

.method public parsed([B)V
    .locals 5

    .line 57
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    const/4 v2, 0x1

    const/16 v3, -0x74e1

    if-eq v0, v3, :cond_0

    .line 59
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    new-instance v3, Ljava/io/IOException;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "unknown format (magic number %x)"

    invoke-static {v4, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->report(Ljava/lang/Exception;)V

    .line 60
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    new-instance v0, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 63
    aget-byte v0, p1, v0

    iput v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->flags:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 64
    :goto_0
    iput-boolean v2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    if-eqz v2, :cond_2

    .line 66
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 68
    :cond_2
    iget p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    .line 69
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Lcom/koushikdutta/async/PushParser;

    new-instance v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    invoke-virtual {p1, v3, v0}, Lcom/koushikdutta/async/PushParser;->readByteArray(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    goto :goto_1

    .line 86
    :cond_3
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->next()V

    :goto_1
    return-void
.end method
