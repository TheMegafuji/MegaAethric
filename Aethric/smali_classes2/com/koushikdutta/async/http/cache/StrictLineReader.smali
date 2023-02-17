.class Lcom/koushikdutta/async/http/cache/StrictLineReader;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x2000

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 81
    sget-object v0, Lcom/koushikdutta/async/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    if-ltz p2, :cond_2

    .line 117
    sget-object v0, Lcom/koushikdutta/async/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/koushikdutta/async/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->in:Ljava/io/InputStream;

    .line 122
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    return-void

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "in == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    const/16 v0, 0x2000

    .line 94
    invoke-direct {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/cache/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method private fillBuf()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 237
    iput v3, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    .line 238
    iput v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 135
    iput-object v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    .line 136
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 138
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasUnterminatedLine()Z
    .locals 2

    .line 222
    iget v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 209
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 211
    :catch_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected an int but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    if-eqz v1, :cond_7

    .line 158
    iget v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    iget v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    if-lt v1, v2, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->fillBuf()V

    .line 162
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    :goto_0
    iget v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_3

    .line 163
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    aget-byte v2, v2, v1

    if-ne v2, v3, :cond_2

    .line 164
    iget v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    .line 165
    :goto_1
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    iget v5, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    iget v6, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    sub-int/2addr v3, v6

    invoke-direct {v2, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v1, v1, 0x1

    .line 166
    iput v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    .line 167
    monitor-exit v0

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_3
    new-instance v1, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;

    iget v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    iget v4, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;-><init>(Lcom/koushikdutta/async/http/cache/StrictLineReader;I)V

    .line 181
    :cond_4
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    iget v4, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    iget v5, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    iget v6, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    .line 183
    iput v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    .line 184
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->fillBuf()V

    .line 186
    iget v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    :goto_2
    iget v4, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    if-eq v2, v4, :cond_4

    .line 187
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    aget-byte v4, v4, v2

    if-ne v4, v3, :cond_6

    .line 188
    iget v3, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    if-eq v2, v3, :cond_5

    .line 189
    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    iget v4, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    iget v5, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    sub-int v5, v2, v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 191
    iput v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    .line 192
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 152
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 196
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
