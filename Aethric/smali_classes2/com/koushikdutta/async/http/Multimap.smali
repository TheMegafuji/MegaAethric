.class public Lcom/koushikdutta/async/http/Multimap;
.super Ljava/util/LinkedHashMap;
.source "Multimap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/Multimap$StringDecoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Iterable<",
        "Lcom/koushikdutta/async/http/NameValuePair;",
        ">;"
    }
.end annotation


# static fields
.field public static final QUERY_DECODER:Lcom/koushikdutta/async/http/Multimap$StringDecoder;

.field public static final URL_DECODER:Lcom/koushikdutta/async/http/Multimap$StringDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/koushikdutta/async/http/Multimap$1;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap$1;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/Multimap;->QUERY_DECODER:Lcom/koushikdutta/async/http/Multimap$StringDecoder;

    .line 130
    new-instance v0, Lcom/koushikdutta/async/http/Multimap$2;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap$2;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/Multimap;->URL_DECODER:Lcom/koushikdutta/async/http/Multimap$StringDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/Multimap;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/Multimap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/NameValuePair;

    .line 71
    invoke-interface {v0}, Lcom/koushikdutta/async/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/koushikdutta/async/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/Multimap$StringDecoder;)Lcom/koushikdutta/async/http/Multimap;
    .locals 8

    .line 87
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 91
    array-length p1, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_5

    aget-object v3, p0, v2

    const/4 v4, 0x2

    .line 92
    invoke-virtual {v3, p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 93
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 98
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 99
    aget-object v5, v3, v7

    :cond_2
    if-eqz v5, :cond_3

    if-eqz p3, :cond_3

    const-string v3, "\""

    .line 100
    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_4

    if-eqz p4, :cond_4

    .line 103
    invoke-interface {p4, v4}, Lcom/koushikdutta/async/http/Multimap$StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-interface {p4, v5}, Lcom/koushikdutta/async/http/Multimap$StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    :cond_4
    invoke-virtual {v0, v4, v5}, Lcom/koushikdutta/async/http/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/Multimap$StringDecoder;)Lcom/koushikdutta/async/http/Multimap;
    .locals 1

    const-string v0, "="

    .line 83
    invoke-static {p0, p1, v0, p2, p3}, Lcom/koushikdutta/async/http/Multimap;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/Multimap$StringDecoder;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object p0

    return-object p0
.end method

.method public static parseCommaDelimited(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;
    .locals 3

    const-string v0, ","

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-static {p0, v0, v1, v2}, Lcom/koushikdutta/async/http/Multimap;->parse(Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/Multimap$StringDecoder;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object p0

    return-object p0
.end method

.method public static parseQuery(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;
    .locals 3

    .line 127
    sget-object v0, Lcom/koushikdutta/async/http/Multimap;->QUERY_DECODER:Lcom/koushikdutta/async/http/Multimap$StringDecoder;

    const-string v1, "&"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/koushikdutta/async/http/Multimap;->parse(Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/Multimap$StringDecoder;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object p0

    return-object p0
.end method

.method public static parseSemicolonDelimited(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;
    .locals 3

    const-string v0, ";"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-static {p0, v0, v1, v2}, Lcom/koushikdutta/async/http/Multimap;->parse(Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/Multimap$StringDecoder;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object p0

    return-object p0
.end method

.method public static parseUrlEncoded(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;
    .locals 3

    .line 138
    sget-object v0, Lcom/koushikdutta/async/http/Multimap;->URL_DECODER:Lcom/koushikdutta/async/http/Multimap$StringDecoder;

    const-string v1, "&"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/koushikdutta/async/http/Multimap;->parse(Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/Multimap$StringDecoder;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/Multimap;->ensure(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ensure(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/Multimap;->newList()Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getAllString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 35
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 28
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/koushikdutta/async/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 146
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 147
    new-instance v5, Lcom/koushikdutta/async/http/BasicNameValuePair;

    invoke-direct {v5, v2, v4}, Lcom/koushikdutta/async/http/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected newList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/Multimap;->newList()Ljava/util/List;

    move-result-object v0

    .line 65
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toSingleMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
