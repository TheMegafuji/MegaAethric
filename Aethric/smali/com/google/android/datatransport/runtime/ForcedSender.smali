.class public final Lcom/google/android/datatransport/runtime/ForcedSender;
.super Ljava/lang/Object;
.source "ForcedSender.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTransportContextOrThrow(Lcom/google/android/datatransport/Transport;)Lcom/google/android/datatransport/runtime/TransportContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/Transport<",
            "*>;)",
            "Lcom/google/android/datatransport/runtime/TransportContext;"
        }
    .end annotation

    .line 35
    instance-of v0, p0, Lcom/google/android/datatransport/runtime/TransportImpl;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Lcom/google/android/datatransport/runtime/TransportImpl;

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/TransportImpl;->getTransportContext()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object p0

    return-object p0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected instance of TransportImpl."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sendBlocking(Lcom/google/android/datatransport/Transport;Lcom/google/android/datatransport/Priority;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/Transport<",
            "*>;",
            "Lcom/google/android/datatransport/Priority;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/ForcedSender;->getTransportContextOrThrow(Lcom/google/android/datatransport/Transport;)Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/TransportContext;->withPriority(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object p0

    .line 31
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getUploader()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->logAndUpdateState(Lcom/google/android/datatransport/runtime/TransportContext;I)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    return-void
.end method
