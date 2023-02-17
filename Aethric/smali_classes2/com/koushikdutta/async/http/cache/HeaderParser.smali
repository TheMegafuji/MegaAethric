.class final Lcom/koushikdutta/async/http/cache/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheControl(Ljava/lang/String;Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    const-string v1, "=,"

    .line 34
    invoke-static {p0, v0, v1}, Lcom/koushikdutta/async/http/cache/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 35
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    invoke-static {p0, v1}, Lcom/koushikdutta/async/http/cache/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    const-string v2, "\""

    .line 52
    invoke-static {p0, v1, v2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 53
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v2, ","

    .line 59
    invoke-static {p0, v1, v2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 60
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 63
    :goto_1
    invoke-interface {p1, v0, v1}, Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-interface {p1, v0, v2}, Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static parseSeconds(Ljava/lang/String;)I
    .locals 4

    .line 101
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    long-to-int p0, v0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method private static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .line 73
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private static skipWhitespace(Ljava/lang/String;I)I
    .locals 2

    .line 86
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method
