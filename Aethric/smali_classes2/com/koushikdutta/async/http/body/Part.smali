.class public Lcom/koushikdutta/async/http/body/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"


# instance fields
.field private length:J

.field mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

.field mHeaders:Lcom/koushikdutta/async/http/Headers;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/Headers;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 27
    iput-wide v0, p0, Lcom/koushikdutta/async/http/body/Part;->length:J

    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v0, "Content-Disposition"

    .line 20
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/koushikdutta/async/http/Multimap;->parseSemicolonDelimited(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/body/Part;->mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 27
    iput-wide v0, p0, Lcom/koushikdutta/async/http/body/Part;->length:J

    .line 29
    iput-wide p2, p0, Lcom/koushikdutta/async/http/body/Part;->length:J

    .line 30
    new-instance p2, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p2}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "form-data; name=\"%s\""

    invoke-static {p3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 33
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/koushikdutta/async/http/NameValuePair;

    .line 34
    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p3}, Lcom/koushikdutta/async/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p3}, Lcom/koushikdutta/async/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v0

    const-string p3, "; %s=\"%s\""

    invoke-static {p4, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Content-Disposition"

    invoke-virtual {p1, p3, p2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 38
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/koushikdutta/async/http/Multimap;->parseSemicolonDelimited(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/body/Part;->mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawHeaders()Lcom/koushikdutta/async/http/Headers;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method

.method public isFile()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/koushikdutta/async/http/body/Part;->length:J

    return-wide v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    return-void
.end method

.method public write(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    return-void
.end method
