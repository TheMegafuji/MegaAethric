.class public final synthetic Lcom/koushikdutta/async/future/-$$Lambda$Converter$HXE5JcXrstZwY0n8rtrGYwzC_Po;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenFutureCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$HXE5JcXrstZwY0n8rtrGYwzC_Po;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/future/-$$Lambda$Converter$HXE5JcXrstZwY0n8rtrGYwzC_Po;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/-$$Lambda$Converter$HXE5JcXrstZwY0n8rtrGYwzC_Po;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/future/-$$Lambda$Converter$HXE5JcXrstZwY0n8rtrGYwzC_Po;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$HXE5JcXrstZwY0n8rtrGYwzC_Po;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    check-cast p1, Lcom/koushikdutta/async/future/Converter$MimedData;

    invoke-static {p1}, Lcom/koushikdutta/async/future/Converter;->lambda$to$0(Lcom/koushikdutta/async/future/Converter$MimedData;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method
