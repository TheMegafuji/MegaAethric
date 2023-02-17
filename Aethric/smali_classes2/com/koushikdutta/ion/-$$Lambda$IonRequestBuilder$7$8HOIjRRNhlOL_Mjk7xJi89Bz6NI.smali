.class public final synthetic Lcom/koushikdutta/ion/-$$Lambda$IonRequestBuilder$7$8HOIjRRNhlOL_Mjk7xJi89Bz6NI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/koushikdutta/ion/-$$Lambda$IonRequestBuilder$7$8HOIjRRNhlOL_Mjk7xJi89Bz6NI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/ion/-$$Lambda$IonRequestBuilder$7$8HOIjRRNhlOL_Mjk7xJi89Bz6NI;

    invoke-direct {v0}, Lcom/koushikdutta/ion/-$$Lambda$IonRequestBuilder$7$8HOIjRRNhlOL_Mjk7xJi89Bz6NI;-><init>()V

    sput-object v0, Lcom/koushikdutta/ion/-$$Lambda$IonRequestBuilder$7$8HOIjRRNhlOL_Mjk7xJi89Bz6NI;->INSTANCE:Lcom/koushikdutta/ion/-$$Lambda$IonRequestBuilder$7$8HOIjRRNhlOL_Mjk7xJi89Bz6NI;

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

    invoke-static {p1}, Lcom/koushikdutta/ion/IonRequestBuilder$7;->lambda$parse$0(Lcom/koushikdutta/async/ByteBufferList;)[B

    move-result-object p1

    return-object p1
.end method
