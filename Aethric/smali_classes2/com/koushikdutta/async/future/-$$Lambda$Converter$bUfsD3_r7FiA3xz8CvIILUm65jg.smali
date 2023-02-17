.class public final synthetic Lcom/koushikdutta/async/future/-$$Lambda$Converter$bUfsD3_r7FiA3xz8CvIILUm65jg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/TypeConverter;


# static fields
.field public static final synthetic INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$bUfsD3_r7FiA3xz8CvIILUm65jg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/future/-$$Lambda$Converter$bUfsD3_r7FiA3xz8CvIILUm65jg;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/-$$Lambda$Converter$bUfsD3_r7FiA3xz8CvIILUm65jg;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/future/-$$Lambda$Converter$bUfsD3_r7FiA3xz8CvIILUm65jg;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$Converter$bUfsD3_r7FiA3xz8CvIILUm65jg;

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

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/koushikdutta/async/future/Converter;->lambda$static$7(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method
