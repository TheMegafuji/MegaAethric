.class public final synthetic Lcom/google/android/datatransport/cct/-$$Lambda$CctTransportBackend$EzmIjpFiMjhFDTXmmEvw0ojyarw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/datatransport/runtime/retries/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/android/datatransport/cct/CctTransportBackend;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/cct/CctTransportBackend;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/cct/-$$Lambda$CctTransportBackend$EzmIjpFiMjhFDTXmmEvw0ojyarw;->f$0:Lcom/google/android/datatransport/cct/CctTransportBackend;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/-$$Lambda$CctTransportBackend$EzmIjpFiMjhFDTXmmEvw0ojyarw;->f$0:Lcom/google/android/datatransport/cct/CctTransportBackend;

    check-cast p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;

    invoke-static {v0, p1}, Lcom/google/android/datatransport/cct/CctTransportBackend;->lambda$EzmIjpFiMjhFDTXmmEvw0ojyarw(Lcom/google/android/datatransport/cct/CctTransportBackend;Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;)Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    move-result-object p1

    return-object p1
.end method
