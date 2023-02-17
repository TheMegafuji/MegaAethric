.class public final synthetic Lcom/koushikdutta/async/future/-$$Lambda$Converter$vuuWG8QWZYt5lmdPu_TzFBlR0v4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/TypeConverter;


# static fields
.field public static final synthetic INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$vuuWG8QWZYt5lmdPu_TzFBlR0v4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/future/-$$Lambda$Converter$vuuWG8QWZYt5lmdPu_TzFBlR0v4;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/-$$Lambda$Converter$vuuWG8QWZYt5lmdPu_TzFBlR0v4;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/future/-$$Lambda$Converter$vuuWG8QWZYt5lmdPu_TzFBlR0v4;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$vuuWG8QWZYt5lmdPu_TzFBlR0v4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p1, p2}, Lcom/koushikdutta/async/future/Converter;->lambda$static$5(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method
