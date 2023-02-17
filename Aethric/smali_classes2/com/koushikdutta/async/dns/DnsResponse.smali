.class public Lcom/koushikdutta/async/dns/DnsResponse;
.super Ljava/lang/Object;
.source "DnsResponse.java"


# instance fields
.field public addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public source:Ljava/net/InetSocketAddress;

.field public txt:Lcom/koushikdutta/async/http/Multimap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/dns/DnsResponse;->addresses:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/dns/DnsResponse;->names:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/dns/DnsResponse;->txt:Lcom/koushikdutta/async/http/Multimap;

    return-void
.end method

.method public static parse(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/dns/DnsResponse;
    .locals 11

    .line 50
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getAll()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 53
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 56
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    .line 58
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    .line 61
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v1

    .line 63
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v2

    .line 65
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v3

    .line 67
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    .line 70
    invoke-static {p0, v0}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    .line 74
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance v1, Lcom/koushikdutta/async/dns/DnsResponse;

    invoke-direct {v1}, Lcom/koushikdutta/async/dns/DnsResponse;-><init>()V

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x10

    if-ge v6, v2, :cond_4

    .line 79
    invoke-static {p0, v0}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v8

    .line 83
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    .line 85
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    .line 87
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v9

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1

    .line 91
    :try_start_0
    new-array v7, v9, [B

    .line 92
    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 93
    iget-object v8, v1, Lcom/koushikdutta/async/dns/DnsResponse;->addresses:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/16 v10, 0xc

    if-ne v8, v10, :cond_2

    .line 96
    iget-object v7, v1, Lcom/koushikdutta/async/dns/DnsResponse;->names:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-ne v8, v7, :cond_3

    .line 99
    new-instance v7, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v7}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 100
    invoke-virtual {p0, v7, v9}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 101
    invoke-virtual {v1, v7}, Lcom/koushikdutta/async/dns/DnsResponse;->parseTxt(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_2

    .line 104
    :cond_3
    new-array v7, v9, [B

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_5

    .line 114
    invoke-static {p0, v0}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    .line 118
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    .line 120
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    .line 122
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v6

    .line 124
    :try_start_1
    new-array v6, v6, [B

    invoke-virtual {p0, v6}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-ge v5, v4, :cond_7

    .line 133
    invoke-static {p0, v0}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v2

    .line 137
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    .line 139
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    .line 141
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v3

    if-ne v2, v7, :cond_6

    .line 144
    :try_start_2
    new-instance v2, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v2}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 145
    invoke-virtual {p0, v2, v3}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 146
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/dns/DnsResponse;->parseTxt(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_5

    .line 149
    :cond_6
    new-array v2, v3, [B

    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    return-object v1
.end method

.method private static parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5

    .line 22
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    const-string v0, ""

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_3

    and-int/lit16 v2, v1, 0xc0

    const-string v3, "."

    const/16 v4, 0xc0

    if-ne v2, v4, :cond_1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x8

    .line 29
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_0
    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 34
    new-array p0, p0, [B

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p1}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :cond_1
    new-array v1, v1, [B

    .line 40
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method parseTxt(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 4

    .line 161
    :goto_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 163
    new-array v0, v0, [B

    .line 164
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 165
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "="

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/koushikdutta/async/dns/DnsResponse;->txt:Lcom/koushikdutta/async/http/Multimap;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/http/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/koushikdutta/async/dns/DnsResponse;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "addresses:\n"

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "names:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/koushikdutta/async/dns/DnsResponse;->names:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v0
.end method
