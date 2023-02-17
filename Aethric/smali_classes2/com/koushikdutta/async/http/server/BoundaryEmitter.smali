.class public Lcom/koushikdutta/async/http/server/BoundaryEmitter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "BoundaryEmitter.java"


# instance fields
.field private boundary:[B

.field state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    const/4 v0, 0x2

    .line 69
    iput v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    return-void
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v2, v1

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public getBoundaryEnd()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->getBoundaryStart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundaryStart()Ljava/lang/String;
    .locals 4

    .line 22
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v2, v1

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method protected onBoundaryEnd()V
    .locals 0

    return-void
.end method

.method protected onBoundaryStart()V
    .locals 0

    return-void
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 9

    .line 79
    iget p1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length p1, p1

    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 81
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    iget v2, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    invoke-virtual {p1, v1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 83
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->addFirst(Ljava/nio/ByteBuffer;)V

    .line 84
    iput v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    .line 88
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result p1

    new-array v1, p1, [B

    .line 89
    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge p2, p1, :cond_f

    .line 91
    iget v3, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    const/4 v4, -0x1

    if-ltz v3, :cond_2

    .line 92
    aget-byte v5, v1, p2

    iget-object v6, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    aget-byte v7, v6, v3

    if-ne v5, v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 93
    iput v3, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    .line 94
    array-length v5, v6

    if-ne v3, v5, :cond_e

    .line 95
    iput v4, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto/16 :goto_1

    :cond_1
    if-lez v3, :cond_e

    sub-int/2addr p2, v3

    .line 101
    iput v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto/16 :goto_1

    :cond_2
    const/16 v5, 0x2d

    const/16 v6, 0xd

    const/4 v7, -0x2

    const/4 v8, -0x4

    if-ne v3, v4, :cond_7

    .line 105
    aget-byte v3, v1, p2

    if-ne v3, v6, :cond_5

    .line 106
    iput v8, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    sub-int v3, p2, v2

    .line 107
    iget-object v4, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v4, v4

    sub-int/2addr v3, v4

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    .line 109
    :cond_3
    invoke-static {v3}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 110
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 111
    new-instance v4, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v4}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 112
    invoke-virtual {v4, v3}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 113
    invoke-super {p0, p0, v4}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 116
    :cond_4
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->onBoundaryStart()V

    goto/16 :goto_1

    .line 118
    :cond_5
    aget-byte v3, v1, p2

    if-ne v3, v5, :cond_6

    .line 119
    iput v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto/16 :goto_1

    .line 122
    :cond_6
    new-instance p1, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string p2, "Invalid multipart/form-data. Expected \r or -"

    invoke-direct {p1, p2}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->report(Ljava/lang/Exception;)V

    return-void

    :cond_7
    const/4 v4, -0x3

    if-ne v3, v7, :cond_9

    .line 127
    aget-byte v3, v1, p2

    if-ne v3, v5, :cond_8

    .line 128
    iput v4, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto :goto_1

    .line 131
    :cond_8
    new-instance p1, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string p2, "Invalid multipart/form-data. Expected -"

    invoke-direct {p1, p2}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->report(Ljava/lang/Exception;)V

    return-void

    :cond_9
    if-ne v3, v4, :cond_b

    .line 136
    aget-byte v3, v1, p2

    if-ne v3, v6, :cond_a

    .line 137
    iput v8, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    sub-int v3, p2, v2

    .line 138
    iget-object v4, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v4, v4

    sub-int v4, v3, v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v4}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v5, v5

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v4, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 140
    new-instance v4, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v4}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 141
    invoke-virtual {v4, v3}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 142
    invoke-super {p0, p0, v4}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 144
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->onBoundaryEnd()V

    goto :goto_1

    .line 147
    :cond_a
    new-instance p1, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string p2, "Invalid multipart/form-data. Expected \r"

    invoke-direct {p1, p2}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->report(Ljava/lang/Exception;)V

    return-void

    :cond_b
    if-ne v3, v8, :cond_d

    .line 152
    aget-byte v3, v1, p2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_c

    add-int/lit8 v2, p2, 0x1

    .line 154
    iput v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto :goto_1

    .line 157
    :cond_c
    new-instance v3, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v4, "Invalid multipart/form-data. Expected \n"

    invoke-direct {v3, v4}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->report(Ljava/lang/Exception;)V

    goto :goto_1

    .line 161
    :cond_d
    new-instance v3, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v4, "Invalid multipart/form-data. Unknown state?"

    invoke-direct {v3, v4}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->report(Ljava/lang/Exception;)V

    :cond_e
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_f
    if-ge v2, p1, :cond_10

    .line 169
    iget p2, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p1, v2

    sub-int/2addr p1, p2

    .line 170
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v1, v2, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 172
    new-instance p2, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p2}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 173
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 174
    invoke-super {p0, p0, p2}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    :cond_10
    return-void
.end method

.method public setBoundary(Ljava/lang/String;)V
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    return-void
.end method
