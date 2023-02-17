.class public Lcom/koushikdutta/async/future/Continuation;
.super Lcom/koushikdutta/async/future/SimpleCancellable;
.source "Continuation.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ContinuationCallback;
.implements Ljava/lang/Runnable;
.implements Lcom/koushikdutta/async/future/Cancellable;


# instance fields
.field callback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field cancelCallback:Ljava/lang/Runnable;

.field private inNext:Z

.field mCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/koushikdutta/async/callback/ContinuationCallback;",
            ">;"
        }
    .end annotation
.end field

.field started:Z

.field private waiting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Runnable;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->mCallbacks:Ljava/util/LinkedList;

    .line 45
    iput-object p2, p0, Lcom/koushikdutta/async/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation;->callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/koushikdutta/async/future/Continuation;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/koushikdutta/async/future/Continuation;->waiting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/future/Continuation;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/future/Continuation;->next()V

    return-void
.end method

.method private hook(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/callback/ContinuationCallback;
    .locals 1

    .line 79
    instance-of v0, p1, Lcom/koushikdutta/async/future/DependentCancellable;

    if-eqz v0, :cond_0

    .line 80
    move-object v0, p1

    check-cast v0, Lcom/koushikdutta/async/future/DependentCancellable;

    .line 81
    invoke-interface {v0, p0}, Lcom/koushikdutta/async/future/DependentCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    :cond_0
    return-object p1
.end method

.method private next()V
    .locals 3

    .line 111
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->inNext:Z

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->mCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->waiting:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->mCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/callback/ContinuationCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    :try_start_0
    iput-boolean v1, p0, Lcom/koushikdutta/async/future/Continuation;->inNext:Z

    .line 117
    iput-boolean v1, p0, Lcom/koushikdutta/async/future/Continuation;->waiting:Z

    .line 118
    invoke-direct {p0}, Lcom/koushikdutta/async/future/Continuation;->wrap()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/koushikdutta/async/callback/ContinuationCallback;->onContinue(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 121
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/Continuation;->reportCompleted(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :goto_1
    iput-boolean v2, p0, Lcom/koushikdutta/async/future/Continuation;->inNext:Z

    goto :goto_0

    :goto_2
    iput-boolean v2, p0, Lcom/koushikdutta/async/future/Continuation;->inNext:Z

    throw v0

    .line 127
    :cond_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->waiting:Z

    if-eqz v0, :cond_2

    return-void

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/Continuation;->reportCompleted(Ljava/lang/Exception;)V

    return-void
.end method

.method private wrap()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 50
    new-instance v0, Lcom/koushikdutta/async/future/Continuation$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/future/Continuation$2;-><init>(Lcom/koushikdutta/async/future/Continuation;)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->mCallbacks:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/Continuation;->hook(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/callback/ContinuationCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Lcom/koushikdutta/async/future/DependentFuture;)Lcom/koushikdutta/async/future/Continuation;
    .locals 1

    .line 97
    invoke-interface {p1, p0}, Lcom/koushikdutta/async/future/DependentFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    .line 98
    new-instance v0, Lcom/koushikdutta/async/future/Continuation$3;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/future/Continuation$3;-><init>(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/future/DependentFuture;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    return-object p0
.end method

.method public cancel()Z
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getCancelCallback()Ljava/lang/Runnable;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public insert(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->mCallbacks:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/Continuation;->hook(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/callback/ContinuationCallback;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public onContinue(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/future/Continuation;->setCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 160
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->start()Lcom/koushikdutta/async/future/Continuation;

    return-void
.end method

.method reportCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->setComplete()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_1

    .line 73
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 165
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->start()Lcom/koushikdutta/async/future/Continuation;

    return-void
.end method

.method public setCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation;->callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public setCancelCallback(Lcom/koushikdutta/async/future/Cancellable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/future/Continuation$1;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/future/Continuation$1;-><init>(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/future/Cancellable;)V

    iput-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setCancelCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public start()Lcom/koushikdutta/async/future/Continuation;
    .locals 2

    .line 150
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->started:Z

    .line 153
    invoke-direct {p0}, Lcom/koushikdutta/async/future/Continuation;->next()V

    return-object p0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
