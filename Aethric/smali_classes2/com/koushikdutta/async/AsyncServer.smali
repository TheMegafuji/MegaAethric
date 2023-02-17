.class public Lcom/koushikdutta/async/AsyncServer;
.super Ljava/lang/Object;
.source "AsyncServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/AsyncServer$NamedThreadFactory;,
        Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;,
        Lcom/koushikdutta/async/AsyncServer$ConnectFuture;,
        Lcom/koushikdutta/async/AsyncServer$ObjectHolder;,
        Lcom/koushikdutta/async/AsyncServer$Scheduler;,
        Lcom/koushikdutta/async/AsyncServer$Scheduled;,
        Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;
    }
.end annotation


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "NIO"

.field private static final QUEUE_EMPTY:J = 0x7fffffffffffffffL

.field private static final ipSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field static mInstance:Lcom/koushikdutta/async/AsyncServer;

.field private static synchronousResolverWorkers:Ljava/util/concurrent/ExecutorService;

.field private static synchronousWorkers:Ljava/util/concurrent/ExecutorService;

.field private static final threadServer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/koushikdutta/async/AsyncServer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field killed:Z

.field mAffinity:Ljava/lang/Thread;

.field mName:Ljava/lang/String;

.field mQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;"
        }
    .end annotation
.end field

.field private mSelector:Lcom/koushikdutta/async/SelectorWrapper;

.field postCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const-string v0, "java.net.preferIPv4Stack"

    const-string v1, "true"

    .line 93
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    .line 94
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :catchall_0
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/AsyncServer;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncServer;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->mInstance:Lcom/koushikdutta/async/AsyncServer;

    const-string v0, "AsyncServer-worker-"

    .line 123
    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->newSynchronousWorkers(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->synchronousWorkers:Ljava/util/concurrent/ExecutorService;

    .line 465
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$5;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncServer$5;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->ipSorter:Ljava/util/Comparator;

    const-string v0, "AsyncServer-resolver-"

    .line 478
    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->newSynchronousWorkers(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->synchronousResolverWorkers:Ljava/util/concurrent/ExecutorService;

    .line 656
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->threadServer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/AsyncServer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/koushikdutta/async/AsyncServer;->postCounter:I

    .line 255
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/koushikdutta/async/AsyncServer$Scheduler;->INSTANCE:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    if-nez p1, :cond_0

    const-string p1, "AsyncServer"

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/koushikdutta/async/AsyncServer;->shutdownEverything(Lcom/koushikdutta/async/SelectorWrapper;)V

    return-void
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/AsyncServer;)Lcom/koushikdutta/async/SelectorWrapper;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    return-object p0
.end method

.method static synthetic access$500()Ljava/util/Comparator;
    .locals 1

    .line 46
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->ipSorter:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->handleSocket(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/ThreadLocal;
    .locals 1

    .line 46
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->threadServer:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$800(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->run(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V

    return-void
.end method

.method private createDatagram(Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/callback/ValueFunction<",
            "Ljava/net/InetAddress;",
            ">;IZ",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "Lcom/koushikdutta/async/AsyncDatagramSocket;",
            ">;)",
            "Lcom/koushikdutta/async/future/Cancellable;"
        }
    .end annotation

    .line 556
    new-instance v6, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v6}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 557
    invoke-virtual {v6, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    .line 558
    new-instance p4, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$6ez4jzL2y5sQ2qJbjjnhSHg2aFM;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$6ez4jzL2y5sQ2qJbjjnhSHg2aFM;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-virtual {p0, p4}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-object v6
.end method

.method public static getCurrentThreadServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 659
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->threadServer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public static getDefault()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 103
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->mInstance:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method private handleSocket(Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 513
    invoke-virtual {p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->getChannel()Lcom/koushikdutta/async/ChannelWrapper;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-virtual {v1}, Lcom/koushikdutta/async/SelectorWrapper;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ChannelWrapper;->register(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 515
    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-virtual {p1, p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->setup(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    return-void
.end method

.method static synthetic lambda$createDatagram$5(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 548
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createDatagram$6(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p0
.end method

.method static synthetic lambda$getByName$4([Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 509
    aget-object p0, p0, v0

    return-object p0
.end method

.method static synthetic lambda$post$1(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 190
    invoke-interface {p0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$run$2(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 206
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 207
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method static synthetic lambda$stop$3(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 0

    .line 299
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/SelectorWrapper;->wakeupOnce()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic lambda$wakeup$0(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 0

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/SelectorWrapper;->wakeupOnce()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static lockAndRunQueue(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;)J"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    const/4 v2, 0x0

    .line 779
    monitor-enter p0

    .line 780
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 782
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 783
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    .line 784
    iget-wide v6, v5, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    cmp-long v8, v6, v3

    if-gtz v8, :cond_0

    move-object v2, v5

    goto :goto_1

    .line 788
    :cond_0
    iget-wide v0, v5, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    sub-long/2addr v0, v3

    .line 789
    invoke-virtual {p1, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 792
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    const/4 p1, 0x0

    .line 800
    iput p1, p0, Lcom/koushikdutta/async/AsyncServer;->postCounter:I

    return-wide v0

    .line 797
    :cond_2
    invoke-virtual {v2}, Lcom/koushikdutta/async/AsyncServer$Scheduled;->run()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 792
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static newSynchronousWorkers(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 459
    new-instance v7, Lcom/koushikdutta/async/AsyncServer$NamedThreadFactory;

    invoke-direct {v7, p0}, Lcom/koushikdutta/async/AsyncServer$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 460
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-wide/16 v3, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object p0
.end method

.method public static post(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 76
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;-><init>(Lcom/koushikdutta/async/AsyncServer$1;)V

    .line 77
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/async/ThreadQueue;->getOrCreateThreadQueue(Ljava/lang/Thread;)Lcom/koushikdutta/async/ThreadQueue;

    move-result-object v1

    .line 78
    iput-object v1, v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->threadQueue:Lcom/koushikdutta/async/ThreadQueue;

    .line 79
    iput-object p0, v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->handler:Landroid/os/Handler;

    .line 80
    iput-object p1, v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->runnable:Ljava/lang/Runnable;

    .line 83
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ThreadQueue;->add(Ljava/lang/Runnable;)Z

    .line 84
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    iget-object p0, v1, Lcom/koushikdutta/async/ThreadQueue;->queueSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method private run()V
    .locals 4

    .line 666
    monitor-enter p0

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 669
    :try_start_1
    new-instance v0, Lcom/koushikdutta/async/SelectorWrapper;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/SelectorWrapper;-><init>(Ljava/nio/channels/Selector;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    .line 670
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 676
    :try_start_2
    new-instance v2, Lcom/koushikdutta/async/AsyncServer$8;

    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->mName:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/koushikdutta/async/AsyncServer$8;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V

    iput-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    .line 688
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 690
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 673
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to create selector?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    .line 695
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    .line 699
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 702
    :try_start_3
    invoke-static {p0, v0, v1}, Lcom/koushikdutta/async/AsyncServer;->runLoop(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    :try_end_3
    .catch Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "NIO"

    const-string v3, "Selector closed"

    .line 705
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    :try_start_4
    invoke-virtual {v0}, Lcom/koushikdutta/async/SelectorWrapper;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 699
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method private static run(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Lcom/koushikdutta/async/SelectorWrapper;",
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;)V"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x1

    .line 726
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->runLoop(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    :try_end_0
    .catch Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 729
    invoke-virtual {v1}, Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/nio/channels/ClosedSelectorException;

    if-nez v2, :cond_0

    const-string v2, "NIO"

    const-string v3, "Selector exception, shutting down"

    .line 730
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-array v1, v0, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 731
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 734
    :goto_1
    monitor-enter p0

    .line 735
    :try_start_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 736
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 738
    :cond_2
    invoke-static {p1}, Lcom/koushikdutta/async/AsyncServer;->shutdownEverything(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 739
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    if-ne p2, p1, :cond_3

    .line 740
    new-instance p1, Ljava/util/PriorityQueue;

    sget-object p2, Lcom/koushikdutta/async/AsyncServer$Scheduler;->INSTANCE:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    invoke-direct {p1, v0, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    const/4 p1, 0x0

    .line 741
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    .line 742
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    .line 744
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 745
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static runLoop(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Lcom/koushikdutta/async/SelectorWrapper;",
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;
        }
    .end annotation

    .line 815
    invoke-static {p0, p2}, Lcom/koushikdutta/async/AsyncServer;->lockAndRunQueue(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J

    move-result-wide v0

    .line 817
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 820
    :try_start_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->selectNow()I

    move-result p2

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p2, :cond_1

    .line 824
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->keys()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 826
    monitor-exit p0

    return-void

    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 832
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    cmp-long p2, v0, v2

    if-nez p2, :cond_2

    .line 837
    :try_start_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->select()V

    goto :goto_1

    .line 841
    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/koushikdutta/async/SelectorWrapper;->select(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 850
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->selectedKeys()Ljava/util/Set;

    move-result-object p2

    .line 851
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 853
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 854
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/ServerSocketChannel;
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_3

    .line 858
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v2, :cond_5

    goto :goto_2

    .line 861
    :cond_5
    :try_start_5
    invoke-virtual {v2, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 862
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 863
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/callback/ListenCallback;

    .line 864
    new-instance v6, Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-direct {v6}, Lcom/koushikdutta/async/AsyncNetworkSocket;-><init>()V

    .line 865
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    check-cast v7, Ljava/net/InetSocketAddress;

    invoke-virtual {v6, v2, v7}, Lcom/koushikdutta/async/AsyncNetworkSocket;->attach(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 866
    invoke-virtual {v6, p0, v3}, Lcom/koushikdutta/async/AsyncNetworkSocket;->setup(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    .line 867
    invoke-virtual {v3, v6}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    invoke-interface {v1, v6}, Lcom/koushikdutta/async/callback/ListenCallback;->onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_0
    move-object v1, v3

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-object v1, v3

    :goto_3
    :try_start_6
    new-array v2, v5, [Ljava/io/Closeable;

    aput-object v3, v2, v4

    .line 871
    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    if-eqz v1, :cond_4

    .line 873
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_2

    .line 876
    :cond_6
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 877
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/AsyncNetworkSocket;

    .line 878
    invoke-virtual {v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->onReadable()I

    move-result v1

    .line 879
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->onDataReceived(I)V

    goto :goto_2

    .line 881
    :cond_7
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 882
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/AsyncNetworkSocket;

    .line 883
    invoke-virtual {v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->onDataWritable()V

    goto/16 :goto_2

    .line 885
    :cond_8
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 886
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    .line 887
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/SocketChannel;

    .line 888
    invoke-virtual {v1, v5}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_3

    .line 891
    :try_start_7
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 892
    new-instance v7, Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-direct {v7}, Lcom/koushikdutta/async/AsyncNetworkSocket;-><init>()V

    .line 893
    invoke-virtual {v7, p0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->setup(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    .line 894
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v6, v8}, Lcom/koushikdutta/async/AsyncNetworkSocket;->attach(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 895
    invoke-virtual {v1, v7}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_3

    .line 904
    :try_start_8
    invoke-virtual {v2, v7}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->setComplete(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 905
    iget-object v1, v2, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {v1, v3, v7}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto/16 :goto_2

    :catch_2
    move-exception v7

    .line 898
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v6, v1, v4

    .line 899
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 900
    invoke-virtual {v2, v7}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->setComplete(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 901
    iget-object v1, v2, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {v1, v7, v3}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto/16 :goto_2

    :cond_9
    const-string v1, "NIO"

    const-string v2, "wtf"

    .line 908
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown key state."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    nop

    goto/16 :goto_2

    .line 915
    :cond_a
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    return-void

    :catchall_0
    move-exception p1

    .line 832
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception p0

    .line 846
    new-instance p1, Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method private static shutdownEverything(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 2

    .line 766
    invoke-static {p0}, Lcom/koushikdutta/async/AsyncServer;->shutdownKeys(Lcom/koushikdutta/async/SelectorWrapper;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 768
    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    return-void
.end method

.method private static shutdownKeys(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 4

    .line 752
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/SelectorWrapper;->keys()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    .line 753
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 755
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    :cond_0
    return-void
.end method

.method private static wakeup(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 2

    .line 125
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->synchronousWorkers:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$_zN_NQnaq_BoELwhm5FSMMMIWk0;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$_zN_NQnaq_BoELwhm5FSMMMIWk0;-><init>(Lcom/koushikdutta/async/SelectorWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public connectDatagram(Ljava/lang/String;I)Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v5

    .line 521
    new-instance v6, Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {v6}, Lcom/koushikdutta/async/AsyncDatagramSocket;-><init>()V

    .line 522
    invoke-virtual {v6, v5}, Lcom/koushikdutta/async/AsyncDatagramSocket;->attach(Ljava/nio/channels/DatagramChannel;)V

    .line 526
    new-instance v7, Lcom/koushikdutta/async/AsyncServer$7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/AsyncServer$7;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ILcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public connectDatagram(Ljava/net/SocketAddress;)Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    new-instance v0, Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncDatagramSocket;-><init>()V

    .line 632
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v1

    .line 633
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncDatagramSocket;->attach(Ljava/nio/channels/DatagramChannel;)V

    .line 637
    new-instance v2, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$XWYampvI_4Ncrd2ozTcMFLFVerA;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$XWYampvI_4Ncrd2ozTcMFLFVerA;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V

    .line 647
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 648
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    return-object v0

    .line 652
    :cond_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-object v0
.end method

.method public connectResolvedInetSocketAddress(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/callback/SocketCreateCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
    .locals 8

    .line 398
    new-instance v6, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$1;)V

    .line 400
    new-instance v7, Lcom/koushikdutta/async/AsyncServer$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/AsyncServer$3;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$ConnectFuture;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/callback/SocketCreateCallback;Ljava/net/InetSocketAddress;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-object v6
.end method

.method public connectResolvedInetSocketAddress(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, p1, p2, v0}, Lcom/koushikdutta/async/AsyncServer;->connectResolvedInetSocketAddress(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/callback/SocketCreateCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    move-result-object p1

    return-object p1
.end method

.method public connectSocket(Ljava/lang/String;ILcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 0

    .line 455
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/koushikdutta/async/AsyncServer;->connectSocket(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public connectSocket(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 3

    .line 431
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->connectResolvedInetSocketAddress(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1

    .line 434
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 436
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->getByName(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    .line 437
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    .line 438
    new-instance v2, Lcom/koushikdutta/async/AsyncServer$4;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/koushikdutta/async/AsyncServer$4;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/net/InetSocketAddress;)V

    .line 439
    invoke-interface {v1, v2}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-object v0
.end method

.method public createDatagram(Ljava/lang/String;IZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "Lcom/koushikdutta/async/AsyncDatagramSocket;",
            ">;)",
            "Lcom/koushikdutta/async/future/Cancellable;"
        }
    .end annotation

    .line 548
    new-instance v0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$8oYYuxQPDCLNTgE6GPuFcODOzR0;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$8oYYuxQPDCLNTgE6GPuFcODOzR0;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/koushikdutta/async/AsyncServer;->createDatagram(Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public createDatagram(Ljava/net/InetAddress;IZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "IZ",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "Lcom/koushikdutta/async/AsyncDatagramSocket;",
            ">;)",
            "Lcom/koushikdutta/async/future/Cancellable;"
        }
    .end annotation

    .line 552
    new-instance v0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$h-N8otqrTb-FVoF7cTMIoUrWAKo;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$h-N8otqrTb-FVoF7cTMIoUrWAKo;-><init>(Ljava/net/InetAddress;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/koushikdutta/async/AsyncServer;->createDatagram(Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public dump()V
    .locals 1

    .line 919
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$9;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/AsyncServer$9;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method

.method public getAffinity()Ljava/lang/Thread;
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    return-object v0
.end method

.method public getAllByName(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "[",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 480
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 481
    sget-object v1, Lcom/koushikdutta/async/AsyncServer;->synchronousResolverWorkers:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/koushikdutta/async/AsyncServer$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/AsyncServer$6;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public getByName(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 509
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->getAllByName(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    sget-object v0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$khwJG3K07wLwE1I9XWn7tuoM_Qc;->INSTANCE:Lcom/koushikdutta/async/-$$Lambda$AsyncServer$khwJG3K07wLwE1I9XWn7tuoM_Qc;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->thenConvert(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public isAffinityThread()Z
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAffinityThreadOrStopped()Z
    .locals 2

    .line 944
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 945
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public kill()V
    .locals 1

    .line 136
    monitor-enter p0

    const/4 v0, 0x1

    .line 137
    :try_start_0
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncServer;->killed:Z

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->stop(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 138
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synthetic lambda$connectDatagram$9$AsyncServer(Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V
    .locals 0

    .line 639
    :try_start_0
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->handleSocket(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    .line 640
    invoke-virtual {p2, p3}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/io/Closeable;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 643
    invoke-static {p1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$createDatagram$7$AsyncServer(Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 3

    .line 561
    :try_start_0
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 563
    :try_start_1
    new-instance v1, Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {v1}, Lcom/koushikdutta/async/AsyncDatagramSocket;-><init>()V

    .line 564
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/AsyncDatagramSocket;->attach(Ljava/nio/channels/DatagramChannel;)V

    if-nez p1, :cond_0

    .line 568
    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_0

    .line 570
    :cond_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-interface {p1}, Lcom/koushikdutta/async/callback/ValueFunction;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object p1, v2

    :goto_0
    if-eqz p3, :cond_1

    .line 573
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 574
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 575
    invoke-direct {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->handleSocket(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    .line 576
    invoke-virtual {p4, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 577
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    const/4 v0, 0x0

    :goto_1
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/io/Closeable;

    const/4 p3, 0x0

    aput-object v0, p2, p3

    .line 580
    invoke-static {p2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 581
    invoke-virtual {p4, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    :cond_2
    :goto_2
    return-void
.end method

.method public synthetic lambda$openDatagram$8$AsyncServer(Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/net/InetAddress;IZ)V
    .locals 2

    .line 596
    :try_start_0
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 602
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/AsyncDatagramSocket;->attach(Ljava/nio/channels/DatagramChannel;)V

    if-nez p2, :cond_0

    .line 606
    new-instance p2, Ljava/net/InetSocketAddress;

    invoke-direct {p2, p3}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_0

    .line 608
    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object p2, v1

    :goto_0
    if-eqz p4, :cond_1

    .line 611
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 612
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 613
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->handleSocket(Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "NIO"

    const-string p3, "Datagram error"

    .line 616
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/io/Closeable;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    .line 617
    invoke-static {p1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    :catch_1
    :goto_1
    return-void
.end method

.method public listen(Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;
    .locals 8

    .line 330
    new-instance v6, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;-><init>(Lcom/koushikdutta/async/AsyncServer$1;)V

    .line 331
    new-instance v7, Lcom/koushikdutta/async/AsyncServer$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/AsyncServer$2;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncServer$ObjectHolder;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    .line 374
    iget-object p1, v6, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;->held:Ljava/lang/Object;

    check-cast p1, Lcom/koushikdutta/async/AsyncServerSocket;

    return-object p1
.end method

.method protected onDataReceived(I)V
    .locals 0

    return-void
.end method

.method protected onDataSent(I)V
    .locals 0

    return-void
.end method

.method public openDatagram()Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 544
    invoke-virtual {p0, v0, v1, v1}, Lcom/koushikdutta/async/AsyncServer;->openDatagram(Ljava/net/InetAddress;IZ)Lcom/koushikdutta/async/AsyncDatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method public openDatagram(Ljava/net/InetAddress;IZ)Lcom/koushikdutta/async/AsyncDatagramSocket;
    .locals 8

    .line 589
    new-instance v6, Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {v6}, Lcom/koushikdutta/async/AsyncDatagramSocket;-><init>()V

    .line 593
    new-instance v7, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$XLZmtzQlESQFaBYO1gWrhu3b1XQ;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$XLZmtzQlESQFaBYO1gWrhu3b1XQ;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/net/InetAddress;IZ)V

    .line 621
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-eq p1, p2, :cond_0

    .line 622
    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    return-object v6

    .line 626
    :cond_0
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    return-object v6
.end method

.method public post(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1

    .line 190
    new-instance v0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$OUbpodaZZrCm2NotMUuBRjmou84;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$OUbpodaZZrCm2NotMUuBRjmou84;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 2

    const-wide/16 v0, 0x0

    .line 186
    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/AsyncServer;->postDelayed(Ljava/lang/Runnable;J)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Lcom/koushikdutta/async/future/Cancellable;
    .locals 4

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncServer;->killed:Z

    if-eqz v0, :cond_0

    .line 147
    sget-object p1, Lcom/koushikdutta/async/future/SimpleCancellable;->CANCELLED:Lcom/koushikdutta/async/future/Cancellable;

    monitor-exit p0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 161
    iget p2, p0, Lcom/koushikdutta/async/AsyncServer;->postCounter:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/koushikdutta/async/AsyncServer;->postCounter:I

    int-to-long v0, p2

    goto :goto_0

    .line 162
    :cond_2
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 163
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    iget-wide p2, p2, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    const-wide/16 v2, 0x1

    sub-long/2addr p2, v2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 166
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    new-instance p3, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    invoke-direct {p3, p0, p1, v0, v1}, Lcom/koushikdutta/async/AsyncServer$Scheduled;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Runnable;J)V

    invoke-virtual {p2, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    if-nez p1, :cond_4

    .line 169
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncServer;->run()V

    .line 170
    :cond_4
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->isAffinityThread()Z

    move-result p1

    if-nez p1, :cond_5

    .line 171
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-static {p1}, Lcom/koushikdutta/async/AsyncServer;->wakeup(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 173
    :cond_5
    monitor-exit p0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public postImmediate(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 2

    .line 178
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 179
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    .line 182
    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/AsyncServer;->postDelayed(Ljava/lang/Runnable;J)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 2

    .line 194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    .line 196
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    invoke-static {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->lockAndRunQueue(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J

    return-void

    .line 201
    :cond_0
    monitor-enter p0

    .line 202
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncServer;->killed:Z

    if-eqz v0, :cond_1

    .line 203
    monitor-exit p0

    return-void

    .line 204
    :cond_1
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 205
    new-instance v1, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$Uu1RloTUf-6HV4W0CHvcXw0E5_E;

    invoke-direct {v1, p1, v0}, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$Uu1RloTUf-6HV4W0CHvcXw0E5_E;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    .line 209
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NIO"

    const-string v1, "run"

    .line 214
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 209
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->stop(Z)V

    return-void
.end method

.method public stop(Z)V
    .locals 8

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->isAffinityThread()Z

    move-result v0

    .line 284
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    if-nez v1, :cond_0

    .line 286
    monitor-exit p0

    return-void

    .line 287
    :cond_0
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 290
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    new-instance v4, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    new-instance v5, Lcom/koushikdutta/async/AsyncServer$1;

    invoke-direct {v5, p0, v1, v2}, Lcom/koushikdutta/async/AsyncServer$1;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/concurrent/Semaphore;)V

    const-wide/16 v6, 0x0

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/koushikdutta/async/AsyncServer$Scheduled;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Runnable;J)V

    invoke-virtual {v3, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v3, Lcom/koushikdutta/async/AsyncServer;->synchronousWorkers:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$eD7vn0Zt9Ju3IUYET266ZSOO1N4;

    invoke-direct {v4, v1}, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$eD7vn0Zt9Ju3IUYET266ZSOO1N4;-><init>(Lcom/koushikdutta/async/SelectorWrapper;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 306
    invoke-static {v1}, Lcom/koushikdutta/async/AsyncServer;->shutdownKeys(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 308
    new-instance v1, Ljava/util/PriorityQueue;

    const/4 v3, 0x1

    sget-object v4, Lcom/koushikdutta/async/AsyncServer$Scheduler;->INSTANCE:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    invoke-direct {v1, v3, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    const/4 v1, 0x0

    .line 309
    iput-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    .line 310
    iput-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Ljava/lang/Thread;

    .line 311
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 314
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 311
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
