.class public final synthetic Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$ubjG-VijEvtwYQFhJ5yeItKpb6I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final synthetic INSTANCE:Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$ubjG-VijEvtwYQFhJ5yeItKpb6I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$ubjG-VijEvtwYQFhJ5yeItKpb6I;

    invoke-direct {v0}, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$ubjG-VijEvtwYQFhJ5yeItKpb6I;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$ubjG-VijEvtwYQFhJ5yeItKpb6I;->INSTANCE:Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$ubjG-VijEvtwYQFhJ5yeItKpb6I;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->lambda$static$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
