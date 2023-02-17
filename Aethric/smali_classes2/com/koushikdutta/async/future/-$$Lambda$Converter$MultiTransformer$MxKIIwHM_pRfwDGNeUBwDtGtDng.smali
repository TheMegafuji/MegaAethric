.class public final synthetic Lcom/koushikdutta/async/future/-$$Lambda$Converter$MultiTransformer$MxKIIwHM_pRfwDGNeUBwDtGtDng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/future/Converter$MultiTransformer;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/Converter$MultiTransformer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/future/-$$Lambda$Converter$MultiTransformer$MxKIIwHM_pRfwDGNeUBwDtGtDng;->f$0:Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    iput-object p2, p0, Lcom/koushikdutta/async/future/-$$Lambda$Converter$MultiTransformer$MxKIIwHM_pRfwDGNeUBwDtGtDng;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/future/-$$Lambda$Converter$MultiTransformer$MxKIIwHM_pRfwDGNeUBwDtGtDng;->f$0:Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    iget-object v1, p0, Lcom/koushikdutta/async/future/-$$Lambda$Converter$MultiTransformer$MxKIIwHM_pRfwDGNeUBwDtGtDng;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->lambda$transform$0$Converter$MultiTransformer(Ljava/lang/String;Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method
