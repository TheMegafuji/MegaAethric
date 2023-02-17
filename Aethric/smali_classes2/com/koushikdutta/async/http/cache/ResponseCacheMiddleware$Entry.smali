.class final Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final cipherSuite:Ljava/lang/String;

.field private final localCertificates:[Ljava/security/cert/Certificate;

.field private final peerCertificates:[Ljava/security/cert/Certificate;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

.field private final uri:Ljava/lang/String;

.field private final varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
    .locals 0

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->uri:Ljava/lang/String;

    .line 604
    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 605
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->requestMethod:Ljava/lang/String;

    .line 606
    iput-object p4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const/4 p1, 0x0

    .line 619
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->cipherSuite:Ljava/lang/String;

    .line 620
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 621
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 568
    :try_start_0
    new-instance v4, Lcom/koushikdutta/async/http/cache/StrictLineReader;

    sget-object v5, Lcom/koushikdutta/async/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v5}, Lcom/koushikdutta/async/http/cache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 569
    :try_start_1
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->uri:Ljava/lang/String;

    .line 570
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->requestMethod:Ljava/lang/String;

    .line 571
    new-instance v5, Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v5}, Lcom/koushikdutta/async/http/cache/RawHeaders;-><init>()V

    iput-object v5, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 572
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readInt()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    .line 574
    iget-object v7, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/koushikdutta/async/http/cache/RawHeaders;->addLine(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 577
    :cond_0
    new-instance v5, Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v5}, Lcom/koushikdutta/async/http/cache/RawHeaders;-><init>()V

    iput-object v5, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 578
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/koushikdutta/async/http/cache/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readInt()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 581
    iget-object v7, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/koushikdutta/async/http/cache/RawHeaders;->addLine(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 593
    :cond_1
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->cipherSuite:Ljava/lang/String;

    .line 594
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 595
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    aput-object p1, v0, v1

    .line 598
    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    :goto_2
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    throw v3
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;)Z
    .locals 0

    .line 510
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->isHttps()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;)Lcom/koushikdutta/async/http/cache/RawHeaders;
    .locals 0

    .line 510
    iget-object p0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    return-object p0
.end method

.method private isHttps()Z
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->uri:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertArray(Lcom/koushikdutta/async/http/cache/StrictLineReader;)[Ljava/security/cert/Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 663
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 664
    new-array v2, v0, [Ljava/security/cert/Certificate;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 666
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 667
    invoke-static {v5, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 668
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 673
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, "-1\n"

    .line 679
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 683
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 684
    array-length v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p2, v3

    .line 685
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    .line 686
    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 690
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public matches(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->requestMethod:Ljava/lang/String;

    .line 697
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {p2, p1, v0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 699
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->varyMatches(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public writeTo(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 626
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->newOutputStream(I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 627
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lcom/koushikdutta/async/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 629
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->uri:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 630
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 631
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 632
    :goto_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->length()I

    move-result v3

    const-string v4, ": "

    if-ge p1, v3, :cond_0

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v5, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 634
    invoke-virtual {v4, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 633
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 637
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 638
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 639
    :goto_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->length()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 640
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 641
    invoke-virtual {v3, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 640
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 644
    :cond_1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->isHttps()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 645
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 646
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->cipherSuite:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 647
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v1, p1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 648
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v1, p1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 650
    :cond_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    return-void
.end method
