.class public final synthetic Lcom/koushikdutta/ion/-$$Lambda$InputStreamParser$gjExD9mpo0yZNXYNEY5x-BeLRa8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/koushikdutta/ion/-$$Lambda$InputStreamParser$gjExD9mpo0yZNXYNEY5x-BeLRa8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/ion/-$$Lambda$InputStreamParser$gjExD9mpo0yZNXYNEY5x-BeLRa8;

    invoke-direct {v0}, Lcom/koushikdutta/ion/-$$Lambda$InputStreamParser$gjExD9mpo0yZNXYNEY5x-BeLRa8;-><init>()V

    sput-object v0, Lcom/koushikdutta/ion/-$$Lambda$InputStreamParser$gjExD9mpo0yZNXYNEY5x-BeLRa8;->INSTANCE:Lcom/koushikdutta/ion/-$$Lambda$InputStreamParser$gjExD9mpo0yZNXYNEY5x-BeLRa8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p1}, Lcom/koushikdutta/ion/InputStreamParser;->lambda$parse$0(Lcom/koushikdutta/async/ByteBufferList;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
