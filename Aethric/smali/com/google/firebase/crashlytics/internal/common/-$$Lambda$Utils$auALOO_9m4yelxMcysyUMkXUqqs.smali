.class public final synthetic Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$Utils$auALOO_9m4yelxMcysyUMkXUqqs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$Utils$auALOO_9m4yelxMcysyUMkXUqqs;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$Utils$auALOO_9m4yelxMcysyUMkXUqqs;->f$0:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/Utils;->lambda$awaitEvenIfOnMainThread$2(Ljava/util/concurrent/CountDownLatch;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
