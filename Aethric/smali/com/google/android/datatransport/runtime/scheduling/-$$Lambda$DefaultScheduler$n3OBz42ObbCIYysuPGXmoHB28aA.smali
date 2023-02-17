.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/-$$Lambda$DefaultScheduler$n3OBz42ObbCIYysuPGXmoHB28aA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final synthetic f$0:Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

.field public final synthetic f$1:Lcom/google/android/datatransport/runtime/TransportContext;

.field public final synthetic f$2:Lcom/google/android/datatransport/runtime/EventInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/-$$Lambda$DefaultScheduler$n3OBz42ObbCIYysuPGXmoHB28aA;->f$0:Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/-$$Lambda$DefaultScheduler$n3OBz42ObbCIYysuPGXmoHB28aA;->f$1:Lcom/google/android/datatransport/runtime/TransportContext;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/-$$Lambda$DefaultScheduler$n3OBz42ObbCIYysuPGXmoHB28aA;->f$2:Lcom/google/android/datatransport/runtime/EventInternal;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/-$$Lambda$DefaultScheduler$n3OBz42ObbCIYysuPGXmoHB28aA;->f$0:Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/-$$Lambda$DefaultScheduler$n3OBz42ObbCIYysuPGXmoHB28aA;->f$1:Lcom/google/android/datatransport/runtime/TransportContext;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/-$$Lambda$DefaultScheduler$n3OBz42ObbCIYysuPGXmoHB28aA;->f$2:Lcom/google/android/datatransport/runtime/EventInternal;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->lambda$schedule$0$DefaultScheduler(Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
