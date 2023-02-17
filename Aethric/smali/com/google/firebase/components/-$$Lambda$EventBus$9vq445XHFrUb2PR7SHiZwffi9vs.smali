.class public final synthetic Lcom/google/firebase/components/-$$Lambda$EventBus$9vq445XHFrUb2PR7SHiZwffi9vs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Map$Entry;

.field public final synthetic f$1:Lcom/google/firebase/events/Event;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/-$$Lambda$EventBus$9vq445XHFrUb2PR7SHiZwffi9vs;->f$0:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/firebase/components/-$$Lambda$EventBus$9vq445XHFrUb2PR7SHiZwffi9vs;->f$1:Lcom/google/firebase/events/Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/-$$Lambda$EventBus$9vq445XHFrUb2PR7SHiZwffi9vs;->f$0:Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/firebase/components/-$$Lambda$EventBus$9vq445XHFrUb2PR7SHiZwffi9vs;->f$1:Lcom/google/firebase/events/Event;

    invoke-static {v0, v1}, Lcom/google/firebase/components/EventBus;->lambda$publish$0(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V

    return-void
.end method
