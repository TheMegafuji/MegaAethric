.class public Lcom/koushikdutta/async/http/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x7c37246eac22717cL


# instance fields
.field protected final major:I

.field protected final minor:I

.field protected final protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    if-ltz p3, :cond_0

    .line 90
    iput-object p1, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->protocol:Ljava/lang/String;

    .line 91
    iput p2, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->major:I

    .line 92
    iput p3, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->minor:I

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Protocol minor version number may not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Protocol major version number must not be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Protocol name must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 283
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compareToVersion(Lcom/koushikdutta/async/http/ProtocolVersion;)I
    .locals 3

    if-eqz p1, :cond_2

    .line 223
    iget-object v0, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v1, p1, Lcom/koushikdutta/async/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/ProtocolVersion;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/ProtocolVersion;->getMajor()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/ProtocolVersion;->getMinor()I

    move-result v0

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/ProtocolVersion;->getMinor()I

    move-result p1

    sub-int/2addr v0, p1

    :cond_0
    return v0

    .line 224
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Versions for different protocols cannot be compared. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Protocol version must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 176
    :cond_0
    instance-of v1, p1, Lcom/koushikdutta/async/http/ProtocolVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 179
    :cond_1
    check-cast p1, Lcom/koushikdutta/async/http/ProtocolVersion;

    .line 181
    iget-object v1, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v3, p1, Lcom/koushikdutta/async/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->major:I

    iget v3, p1, Lcom/koushikdutta/async/http/ProtocolVersion;->major:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->minor:I

    iget p1, p1, Lcom/koushikdutta/async/http/ProtocolVersion;->minor:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public forVersion(II)Lcom/koushikdutta/async/http/ProtocolVersion;
    .locals 2

    .line 140
    iget v0, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->major:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->minor:I

    if-ne p2, v0, :cond_0

    return-object p0

    .line 145
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/http/ProtocolVersion;

    iget-object v1, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/koushikdutta/async/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public final getMajor()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->major:I

    return v0
.end method

.method public final getMinor()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->minor:I

    return v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final greaterEquals(Lcom/koushikdutta/async/http/ProtocolVersion;)Z
    .locals 1

    .line 248
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/ProtocolVersion;->isComparable(Lcom/koushikdutta/async/http/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/ProtocolVersion;->compareToVersion(Lcom/koushikdutta/async/http/ProtocolVersion;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->major:I

    const v2, 0x186a0

    mul-int v1, v1, v2

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->minor:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isComparable(Lcom/koushikdutta/async/http/ProtocolVersion;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object p1, p1, Lcom/koushikdutta/async/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final lessEquals(Lcom/koushikdutta/async/http/ProtocolVersion;)Z
    .locals 1

    .line 263
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/ProtocolVersion;->isComparable(Lcom/koushikdutta/async/http/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/ProtocolVersion;->compareToVersion(Lcom/koushikdutta/async/http/ProtocolVersion;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    iget v1, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->major:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    iget v1, p0, Lcom/koushikdutta/async/http/ProtocolVersion;->minor:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
