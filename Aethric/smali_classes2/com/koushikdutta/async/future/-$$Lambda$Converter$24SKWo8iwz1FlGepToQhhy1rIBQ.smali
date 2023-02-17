.class public final synthetic Lcom/koushikdutta/async/future/-$$Lambda$Converter$24SKWo8iwz1FlGepToQhhy1rIBQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/TypeConverter;


# static fields
.field public static final synthetic INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$24SKWo8iwz1FlGepToQhhy1rIBQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/future/-$$Lambda$Converter$24SKWo8iwz1FlGepToQhhy1rIBQ;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/-$$Lambda$Converter$24SKWo8iwz1FlGepToQhhy1rIBQ;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/future/-$$Lambda$Converter$24SKWo8iwz1FlGepToQhhy1rIBQ;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$24SKWo8iwz1FlGepToQhhy1rIBQ;

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

    invoke-static {p1, p2}, Lcom/koushikdutta/async/future/Converter;->lambda$static$4(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method
