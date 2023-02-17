.class final Lcom/koushikdutta/async/http/cache/RawHeaders;
.super Ljava/lang/Object;
.source "RawHeaders.java"


# static fields
.field private static final FIELD_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private httpMinorVersion:I

.field private final namesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseCode:I

.field private responseMessage:Ljava/lang/String;

.field private statusLine:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/koushikdutta/async/http/cache/RawHeaders$1;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders$1;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/cache/RawHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    const/4 v0, 0x1

    .line 64
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->httpMinorVersion:I

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->responseCode:I

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/cache/RawHeaders;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    const/4 v0, 0x1

    .line 64
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->httpMinorVersion:I

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->responseCode:I

    .line 71
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->copy(Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    return-void
.end method

.method public static fromMultimap(Ljava/util/Map;)Lcom/koushikdutta/async/http/cache/RawHeaders;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/koushikdutta/async/http/cache/RawHeaders;"
        }
    .end annotation

    .line 290
    new-instance v0, Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;-><init>()V

    .line 291
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 292
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 293
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 295
    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->addAll(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 296
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/koushikdutta/async/http/cache/RawHeaders;
    .locals 5

    const-string v0, "\n"

    .line 304
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 306
    new-instance v0, Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;-><init>()V

    .line 307
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 308
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 312
    :cond_0
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 313
    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    goto :goto_1

    .line 315
    :cond_1
    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->addLine(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 163
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring HTTP header field \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' because its value is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 155
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fieldName == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addLine(Ljava/lang/String;)V
    .locals 2

    const-string v0, ":"

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    .line 144
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public copy(Lcom/koushikdutta/async/http/cache/RawHeaders;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    iget-object v1, p1, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget-object v0, p1, Lcom/koushikdutta/async/http/cache/RawHeaders;->statusLine:Ljava/lang/String;

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->statusLine:Ljava/lang/String;

    .line 77
    iget v0, p1, Lcom/koushikdutta/async/http/cache/RawHeaders;->httpMinorVersion:I

    iput v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->httpMinorVersion:I

    .line 78
    iget v0, p1, Lcom/koushikdutta/async/http/cache/RawHeaders;->responseCode:I

    iput v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->responseCode:I

    .line 79
    iget-object p1, p1, Lcom/koushikdutta/async/http/cache/RawHeaders;->responseMessage:Ljava/lang/String;

    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->responseMessage:Ljava/lang/String;

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    .line 228
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAll(Ljava/util/Set;)Lcom/koushikdutta/async/http/cache/RawHeaders;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/koushikdutta/async/http/cache/RawHeaders;"
        }
    .end annotation

    .line 239
    new-instance v0, Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;-><init>()V

    const/4 v1, 0x0

    .line 240
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 242
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFieldName(I)Ljava/lang/String;
    .locals 1

    mul-int/lit8 p1, p1, 0x2

    if-ltz p1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHttpMinorVersion()I
    .locals 2

    .line 120
    iget v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->httpMinorVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->responseCode:I

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->statusLine:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    if-ltz p1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public length()I
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public removeAll(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 171
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 174
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStatusLine(Ljava/lang/String;)V
    .locals 3

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->statusLine:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string v0, "HTTP/"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v0, -0x2

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-eq v1, v2, :cond_2

    const/4 v1, 0x0

    .line 99
    iput v1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->httpMinorVersion:I

    :cond_2
    add-int/lit8 v1, v0, 0x3

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 105
    :cond_3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->responseCode:I

    add-int/lit8 v1, v1, 0x1

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v1, v0, :cond_4

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->responseMessage:Ljava/lang/String;

    :cond_4
    :goto_0
    return-void
.end method

.method public toHeaderString()Ljava/lang/String;
    .locals 5

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 251
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->statusLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 252
    :goto_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    .line 254
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toMultimap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lcom/koushikdutta/async/http/cache/RawHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 266
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 268
    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 270
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_0

    .line 273
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->statusLine:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 279
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
