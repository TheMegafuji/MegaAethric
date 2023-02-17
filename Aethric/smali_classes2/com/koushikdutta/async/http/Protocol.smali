.class public enum Lcom/koushikdutta/async/http/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/koushikdutta/async/http/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/koushikdutta/async/http/Protocol;

.field public static final enum HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

.field public static final enum HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

.field public static final enum HTTP_2:Lcom/koushikdutta/async/http/Protocol;

.field public static final enum SPDY_3:Lcom/koushikdutta/async/http/Protocol;

.field private static final protocols:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lcom/koushikdutta/async/http/Protocol;

    const-string v1, "HTTP_1_0"

    const/4 v2, 0x0

    const-string v3, "http/1.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

    .line 32
    new-instance v0, Lcom/koushikdutta/async/http/Protocol;

    const-string v1, "HTTP_1_1"

    const/4 v3, 0x1

    const-string v4, "http/1.1"

    invoke-direct {v0, v1, v3, v4}, Lcom/koushikdutta/async/http/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    .line 44
    new-instance v0, Lcom/koushikdutta/async/http/Protocol$1;

    const-string v1, "SPDY_3"

    const/4 v4, 0x2

    const-string v5, "spdy/3.1"

    invoke-direct {v0, v1, v4, v5}, Lcom/koushikdutta/async/http/Protocol$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    .line 63
    new-instance v0, Lcom/koushikdutta/async/http/Protocol$2;

    const-string v1, "HTTP_2"

    const/4 v5, 0x3

    const-string v6, "h2-13"

    invoke-direct {v0, v1, v5, v6}, Lcom/koushikdutta/async/http/Protocol$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/koushikdutta/async/http/Protocol;

    .line 18
    sget-object v6, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

    aput-object v6, v1, v2

    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    aput-object v2, v1, v3

    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/koushikdutta/async/http/Protocol;->$VALUES:[Lcom/koushikdutta/async/http/Protocol;

    .line 71
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/Protocol;->protocols:Ljava/util/Hashtable;

    .line 74
    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->protocols:Ljava/util/Hashtable;

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->protocols:Ljava/util/Hashtable;

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->protocols:Ljava/util/Hashtable;

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object p3, p0, Lcom/koushikdutta/async/http/Protocol;->protocol:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/koushikdutta/async/http/Protocol$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_0
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->protocols:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/async/http/Protocol;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;
    .locals 1

    .line 18
    const-class v0, Lcom/koushikdutta/async/http/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/async/http/Protocol;

    return-object p0
.end method

.method public static values()[Lcom/koushikdutta/async/http/Protocol;
    .locals 1

    .line 18
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->$VALUES:[Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v0}, [Lcom/koushikdutta/async/http/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/async/http/Protocol;

    return-object v0
.end method


# virtual methods
.method public needsSpdyConnection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/http/Protocol;->protocol:Ljava/lang/String;

    return-object v0
.end method
