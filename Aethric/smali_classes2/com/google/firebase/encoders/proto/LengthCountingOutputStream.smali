.class final Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;
.super Ljava/io/OutputStream;
.source "LengthCountingOutputStream.java"


# instance fields
.field private length:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;->length:J

    return-void
.end method


# virtual methods
.method getLength()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;->length:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4

    .line 26
    iget-wide v0, p0, Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;->length:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;->length:J

    return-void
.end method

.method public write([B)V
    .locals 4

    .line 31
    iget-wide v0, p0, Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;->length:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;->length:J

    return-void
.end method

.method public write([BII)V
    .locals 2

    if-ltz p2, :cond_0

    .line 36
    array-length v0, p1

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    add-int/2addr p2, p3

    array-length p1, p1

    if-gt p2, p1, :cond_0

    if-ltz p2, :cond_0

    .line 43
    iget-wide p1, p0, Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;->length:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;->length:J

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
