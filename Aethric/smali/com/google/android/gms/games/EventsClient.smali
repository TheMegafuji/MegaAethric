.class public interface abstract Lcom/google/android/gms/games/EventsClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# virtual methods
.method public abstract increment(Ljava/lang/String;I)V
.end method

.method public abstract load(Z)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/event/EventBuffer;",
            ">;>;"
        }
    .end annotation
.end method

.method public varargs abstract loadByIds(Z[Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/event/EventBuffer;",
            ">;>;"
        }
    .end annotation
.end method
