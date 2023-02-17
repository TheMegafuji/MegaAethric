.class public final synthetic Lcom/google/firebase/messaging/-$$Lambda$RequestDeduplicator$ITGJJORE9sEJN9DTBsexmI9PRPA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/messaging/RequestDeduplicator;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/RequestDeduplicator;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/-$$Lambda$RequestDeduplicator$ITGJJORE9sEJN9DTBsexmI9PRPA;->f$0:Lcom/google/firebase/messaging/RequestDeduplicator;

    iput-object p2, p0, Lcom/google/firebase/messaging/-$$Lambda$RequestDeduplicator$ITGJJORE9sEJN9DTBsexmI9PRPA;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/-$$Lambda$RequestDeduplicator$ITGJJORE9sEJN9DTBsexmI9PRPA;->f$0:Lcom/google/firebase/messaging/RequestDeduplicator;

    iget-object v1, p0, Lcom/google/firebase/messaging/-$$Lambda$RequestDeduplicator$ITGJJORE9sEJN9DTBsexmI9PRPA;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/messaging/RequestDeduplicator;->lambda$getOrStartGetTokenRequest$0$RequestDeduplicator(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
