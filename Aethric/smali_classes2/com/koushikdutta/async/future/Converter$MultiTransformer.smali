.class Lcom/koushikdutta/async/future/Converter$MultiTransformer;
.super Lcom/koushikdutta/async/future/MultiTransformFuture;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/future/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiTransformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/MultiTransformFuture<",
        "Lcom/koushikdutta/async/future/Converter$MimedData<",
        "Lcom/koushikdutta/async/future/Future<",
        "TT;>;>;",
        "Lcom/koushikdutta/async/future/Converter$MimedData<",
        "Lcom/koushikdutta/async/future/Future<",
        "TF;>;>;>;"
    }
.end annotation


# instance fields
.field converter:Lcom/koushikdutta/async/future/TypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/TypeConverter<",
            "TT;TF;>;"
        }
    .end annotation
.end field

.field converterMime:Ljava/lang/String;

.field distance:I


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/future/TypeConverter;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/TypeConverter<",
            "TT;TF;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/koushikdutta/async/future/MultiTransformFuture;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->converter:Lcom/koushikdutta/async/future/TypeConverter;

    .line 40
    iput-object p2, p0, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->converterMime:Ljava/lang/String;

    .line 41
    iput p3, p0, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->distance:I

    return-void
.end method

.method static synthetic lambda$transform$1(Lcom/koushikdutta/async/future/MultiFuture;Ljava/lang/Exception;Lcom/koushikdutta/async/future/Future;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/MultiFuture;->setComplete(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/future/MultiFuture;->setComplete(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$transform$0$Converter$MultiTransformer(Ljava/lang/String;Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->converter:Lcom/koushikdutta/async/future/TypeConverter;

    invoke-interface {v0, p2, p1}, Lcom/koushikdutta/async/future/TypeConverter;->convert(Ljava/lang/Object;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method protected transform(Lcom/koushikdutta/async/future/Converter$MimedData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Converter$MimedData<",
            "Lcom/koushikdutta/async/future/Future<",
            "TF;>;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p1, Lcom/koushikdutta/async/future/Converter$MimedData;->mime:Ljava/lang/String;

    .line 52
    new-instance v1, Lcom/koushikdutta/async/future/MultiFuture;

    invoke-direct {v1}, Lcom/koushikdutta/async/future/MultiFuture;-><init>()V

    .line 56
    new-instance v2, Lcom/koushikdutta/async/future/Converter$MimedData;

    iget-object v3, p0, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->converterMime:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/koushikdutta/async/future/Converter;->mimeReplace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/koushikdutta/async/future/Converter$MimedData;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->setComplete(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p1, Lcom/koushikdutta/async/future/Converter$MimedData;->data:Ljava/lang/Object;

    check-cast p1, Lcom/koushikdutta/async/future/Future;

    new-instance v2, Lcom/koushikdutta/async/future/-$$Lambda$Converter$MultiTransformer$MxKIIwHM_pRfwDGNeUBwDtGtDng;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/future/-$$Lambda$Converter$MultiTransformer$MxKIIwHM_pRfwDGNeUBwDtGtDng;-><init>(Lcom/koushikdutta/async/future/Converter$MultiTransformer;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/future/Future;->thenConvert(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/future/-$$Lambda$Converter$MultiTransformer$tSnQye-slvF-VutQgdfI3qtLc_I;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/future/-$$Lambda$Converter$MultiTransformer$tSnQye-slvF-VutQgdfI3qtLc_I;-><init>(Lcom/koushikdutta/async/future/MultiFuture;)V

    .line 60
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-void
.end method

.method protected bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    check-cast p1, Lcom/koushikdutta/async/future/Converter$MimedData;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->transform(Lcom/koushikdutta/async/future/Converter$MimedData;)V

    return-void
.end method
