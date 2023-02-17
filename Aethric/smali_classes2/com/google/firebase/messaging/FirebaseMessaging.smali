.class public Lcom/google/firebase/messaging/FirebaseMessaging;
.super Ljava/lang/Object;
.source "FirebaseMessaging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;
    }
.end annotation


# static fields
.field private static final EXTRA_DUMMY_P_INTENT:Ljava/lang/String; = "app"

.field static final GMS_PACKAGE:Ljava/lang/String; = "com.google.android.gms"

.field public static final INSTANCE_ID_SCOPE:Ljava/lang/String; = "FCM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_DELAY_SEC:J

.field private static final MIN_DELAY_SEC:J = 0x1eL

.field private static final SEND_INTENT_ACTION:Ljava/lang/String; = "com.google.android.gcm.intent.SEND"

.field private static final SUBTYPE_DEFAULT:Ljava/lang/String; = ""

.field static final TAG:Ljava/lang/String; = "FirebaseMessaging"

.field private static store:Lcom/google/firebase/messaging/Store;

.field static syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field static transportFactory:Lcom/google/android/datatransport/TransportFactory;


# instance fields
.field private final autoInit:Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;

.field private final context:Landroid/content/Context;

.field private final fileExecutor:Ljava/util/concurrent/Executor;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final fis:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final gmsRpc:Lcom/google/firebase/messaging/GmsRpc;

.field private final iid:Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;

.field private final initExecutor:Ljava/util/concurrent/Executor;

.field private final lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final metadata:Lcom/google/firebase/messaging/Metadata;

.field private final requestDeduplicator:Lcom/google/firebase/messaging/RequestDeduplicator;

.field private syncScheduledOrRunning:Z

.field private final taskExecutor:Ljava/util/concurrent/Executor;

.field private final topicsSubscriberTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/messaging/TopicsSubscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/FirebaseMessaging;->MAX_DELAY_SEC:J

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/android/datatransport/TransportFactory;Lcom/google/firebase/events/Subscriber;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/platforminfo/UserAgentPublisher;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            "Lcom/google/android/datatransport/TransportFactory;",
            "Lcom/google/firebase/events/Subscriber;",
            ")V"
        }
    .end annotation

    .line 170
    new-instance v8, Lcom/google/firebase/messaging/Metadata;

    .line 178
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/google/firebase/messaging/Metadata;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 170
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/android/datatransport/TransportFactory;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/messaging/Metadata;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/android/datatransport/TransportFactory;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/messaging/Metadata;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/platforminfo/UserAgentPublisher;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            "Lcom/google/android/datatransport/TransportFactory;",
            "Lcom/google/firebase/events/Subscriber;",
            "Lcom/google/firebase/messaging/Metadata;",
            ")V"
        }
    .end annotation

    .line 190
    new-instance v7, Lcom/google/firebase/messaging/GmsRpc;

    move-object v0, v7

    move-object v1, p1

    move-object/from16 v2, p8

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/messaging/GmsRpc;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V

    .line 199
    invoke-static {}, Lcom/google/firebase/messaging/FcmExecutors;->newTaskExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    .line 200
    invoke-static {}, Lcom/google/firebase/messaging/FcmExecutors;->newInitExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    .line 201
    invoke-static {}, Lcom/google/firebase/messaging/FcmExecutors;->newFileIOExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    .line 190
    invoke-direct/range {v0 .. v10}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/android/datatransport/TransportFactory;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/messaging/GmsRpc;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/android/datatransport/TransportFactory;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/messaging/GmsRpc;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->syncScheduledOrRunning:Z

    .line 216
    sput-object p4, Lcom/google/firebase/messaging/FirebaseMessaging;->transportFactory:Lcom/google/android/datatransport/TransportFactory;

    .line 218
    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 219
    iput-object p2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->iid:Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;

    .line 220
    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->fis:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 221
    new-instance p3, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;

    invoke-direct {p3, p0, p5}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/events/Subscriber;)V

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->autoInit:Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;

    .line 222
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    .line 223
    new-instance p3, Lcom/google/firebase/messaging/FcmLifecycleCallbacks;

    invoke-direct {p3}, Lcom/google/firebase/messaging/FcmLifecycleCallbacks;-><init>()V

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 224
    iput-object p6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->metadata:Lcom/google/firebase/messaging/Metadata;

    .line 225
    iput-object p8, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 226
    iput-object p7, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->gmsRpc:Lcom/google/firebase/messaging/GmsRpc;

    .line 227
    new-instance p3, Lcom/google/firebase/messaging/RequestDeduplicator;

    invoke-direct {p3, p8}, Lcom/google/firebase/messaging/RequestDeduplicator;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->requestDeduplicator:Lcom/google/firebase/messaging/RequestDeduplicator;

    .line 228
    iput-object p9, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->initExecutor:Ljava/util/concurrent/Executor;

    .line 229
    iput-object p10, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->fileExecutor:Ljava/util/concurrent/Executor;

    .line 231
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 232
    instance-of p3, p1, Landroid/app/Application;

    if-eqz p3, :cond_0

    .line 233
    check-cast p1, Landroid/app/Application;

    .line 234
    iget-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 236
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Context "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was not an application, can\'t register for lifecycle callbacks. Some notification events may be dropped as a result."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "FirebaseMessaging"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p2, :cond_1

    .line 245
    new-instance p1, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$pZt0yiWEI6_9Dbq-zehNQtHTSmU;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$pZt0yiWEI6_9Dbq-zehNQtHTSmU;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p2, p1}, Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;->addNewTokenListener(Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal$NewTokenListener;)V

    .line 251
    :cond_1
    new-instance p1, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$DYmMY9_jThkqWh9ME1854T3DpKY;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$DYmMY9_jThkqWh9ME1854T3DpKY;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p9, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 258
    iget-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    .line 260
    invoke-static {}, Lcom/google/firebase/messaging/FcmExecutors;->newTopicsSyncExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    .line 259
    invoke-static {p0, p6, p7, p1, p2}, Lcom/google/firebase/messaging/TopicsSubscriber;->createInstance(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/messaging/GmsRpc;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->topicsSubscriberTask:Lcom/google/android/gms/tasks/Task;

    .line 264
    new-instance p2, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$pahcmCpfKzBohvA6JUiC7FixzZQ;

    invoke-direct {p2, p0}, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$pahcmCpfKzBohvA6JUiC7FixzZQ;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-virtual {p1, p9, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 274
    new-instance p1, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$N9YwBPHkqpwiWMymMDd6LnGm5z8;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$N9YwBPHkqpwiWMymMDd6LnGm5z8;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p9, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/messaging/FirebaseMessaging;)Lcom/google/firebase/FirebaseApp;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->startSyncIfNecessary()V

    return-void
.end method

.method static declared-synchronized clearStoreForTest()V
    .locals 2

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    const/4 v1, 0x0

    .line 150
    :try_start_0
    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->store:Lcom/google/firebase/messaging/Store;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static clearTransportFactoryForTest()V
    .locals 1

    const/4 v0, 0x0

    .line 525
    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->transportFactory:Lcom/google/android/datatransport/TransportFactory;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 137
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 157
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-string v1, "Firebase Messaging component is not present"

    .line 158
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getStore(Landroid/content/Context;)Lcom/google/firebase/messaging/Store;
    .locals 2

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->store:Lcom/google/firebase/messaging/Store;

    if-nez v1, :cond_0

    .line 143
    new-instance v1, Lcom/google/firebase/messaging/Store;

    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/Store;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->store:Lcom/google/firebase/messaging/Store;

    .line 145
    :cond_0
    sget-object p0, Lcom/google/firebase/messaging/FirebaseMessaging;->store:Lcom/google/firebase/messaging/Store;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getSubtype()Ljava/lang/String;
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getTransportFactory()Lcom/google/android/datatransport/TransportFactory;
    .locals 1

    .line 520
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->transportFactory:Lcom/google/android/datatransport/TransportFactory;

    return-object v0
.end method

.method private invokeOnTokenRefresh(Ljava/lang/String;)V
    .locals 3

    .line 646
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    .line 647
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking onNewToken for app: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "token"

    .line 651
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    new-instance p1, Lcom/google/firebase/messaging/FcmBroadcastProcessor;

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/google/firebase/messaging/FcmBroadcastProcessor;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->process(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    return-void
.end method

.method static synthetic lambda$subscribeToTopic$7(Ljava/lang/String;Lcom/google/firebase/messaging/TopicsSubscriber;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 461
    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/TopicsSubscriber;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$unsubscribeFromTopic$8(Ljava/lang/String;Lcom/google/firebase/messaging/TopicsSubscriber;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 476
    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/TopicsSubscriber;->unsubscribeFromTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized startSync()V
    .locals 2

    monitor-enter p0

    .line 576
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->syncScheduledOrRunning:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 577
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->syncWithDelaySecondsInternal(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startSyncIfNecessary()V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->iid:Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;

    if-eqz v0, :cond_0

    .line 564
    invoke-interface {v0}, Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;->getToken()Ljava/lang/String;

    return-void

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getTokenWithoutTriggeringSync()Lcom/google/firebase/messaging/Store$Token;

    move-result-object v0

    .line 570
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->tokenNeedsRefresh(Lcom/google/firebase/messaging/Store$Token;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->startSync()V

    :cond_1
    return-void
.end method


# virtual methods
.method blockingGetToken()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->iid:Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;

    if-eqz v0, :cond_0

    .line 594
    :try_start_0
    invoke-interface {v0}, Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;->getTokenTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 596
    :goto_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getTokenWithoutTriggeringSync()Lcom/google/firebase/messaging/Store$Token;

    move-result-object v0

    .line 600
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->tokenNeedsRefresh(Lcom/google/firebase/messaging/Store$Token;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 601
    iget-object v0, v0, Lcom/google/firebase/messaging/Store$Token;->token:Ljava/lang/String;

    return-object v0

    .line 604
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-static {v1}, Lcom/google/firebase/messaging/Metadata;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v1

    .line 605
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->requestDeduplicator:Lcom/google/firebase/messaging/RequestDeduplicator;

    new-instance v3, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$8u3e3XBglmQbAS3SwW9Cdp_dcdM;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$8u3e3XBglmQbAS3SwW9Cdp_dcdM;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/Store$Token;)V

    .line 606
    invoke-virtual {v2, v1, v3}, Lcom/google/firebase/messaging/RequestDeduplicator;->getOrStartGetTokenRequest(Ljava/lang/String;Lcom/google/firebase/messaging/RequestDeduplicator$GetTokenRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 623
    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 625
    :goto_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteToken()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->iid:Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;

    if-eqz v0, :cond_0

    .line 412
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 413
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->initExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$ooYuxwZL2rLV9vjUHfcuwj6k2DY;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$ooYuxwZL2rLV9vjUHfcuwj6k2DY;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 422
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getTokenWithoutTriggeringSync()Lcom/google/firebase/messaging/Store$Token;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 426
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 428
    :cond_1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 429
    invoke-static {}, Lcom/google/firebase/messaging/FcmExecutors;->newNetworkIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 430
    new-instance v2, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$IrpR3SW7Xd6sACTcIT-VQYpAE18;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$IrpR3SW7Xd6sACTcIT-VQYpAE18;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 440
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public deliveryMetricsExportToBigQueryEnabled()Z
    .locals 1

    .line 318
    invoke-static {}, Lcom/google/firebase/messaging/MessagingAnalytics;->deliveryMetricsExportToBigQueryEnabled()Z

    move-result v0

    return v0
.end method

.method enqueueTaskWithDelaySeconds(Ljava/lang/Runnable;J)V
    .locals 5

    .line 552
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 553
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 554
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v4, "TAG"

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 556
    :cond_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 557
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getToken()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->iid:Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;

    if-eqz v0, :cond_0

    .line 386
    invoke-interface {v0}, Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;->getTokenTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 388
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 389
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->initExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$hhRqCIwb_q-GasIrdNMReoTbQ60;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$hhRqCIwb_q-GasIrdNMReoTbQ60;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 397
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method getTokenWithoutTriggeringSync()Lcom/google/firebase/messaging/Store$Token;
    .locals 3

    .line 585
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getStore(Landroid/content/Context;)Lcom/google/firebase/messaging/Store;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getSubtype()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-static {v2}, Lcom/google/firebase/messaging/Metadata;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/messaging/Store;->getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/Store$Token;

    move-result-object v0

    return-object v0
.end method

.method getTopicsSubscriberTask()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/messaging/TopicsSubscriber;",
            ">;"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->topicsSubscriberTask:Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method

.method public isAutoInitEnabled()Z
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->autoInit:Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->isEnabled()Z

    move-result v0

    return v0
.end method

.method isGmsCorePresent()Z
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->metadata:Lcom/google/firebase/messaging/Metadata;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/Metadata;->isGmscorePresent()Z

    move-result v0

    return v0
.end method

.method public isNotificationDelegationEnabled()Z
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/messaging/ProxyNotificationInitializer;->isProxyNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$blockingGetToken$10$FirebaseMessaging(Ljava/lang/String;Lcom/google/firebase/messaging/Store$Token;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 609
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->gmsRpc:Lcom/google/firebase/messaging/GmsRpc;

    .line 610
    invoke-virtual {v0}, Lcom/google/firebase/messaging/GmsRpc;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->fileExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$AxjelUxWoSbGhU7peiiGuXmgkwA;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$AxjelUxWoSbGhU7peiiGuXmgkwA;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/Store$Token;)V

    .line 611
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$blockingGetToken$9$FirebaseMessaging(Ljava/lang/String;Lcom/google/firebase/messaging/Store$Token;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getStore(Landroid/content/Context;)Lcom/google/firebase/messaging/Store;

    move-result-object v0

    .line 616
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getSubtype()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->metadata:Lcom/google/firebase/messaging/Metadata;

    invoke-virtual {v2}, Lcom/google/firebase/messaging/Metadata;->getAppVersionCode()Ljava/lang/String;

    move-result-object v2

    .line 615
    invoke-virtual {v0, v1, p1, p3, v2}, Lcom/google/firebase/messaging/Store;->saveToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 617
    iget-object p1, p2, Lcom/google/firebase/messaging/Store$Token;->token:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 618
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/firebase/messaging/FirebaseMessaging;->invokeOnTokenRefresh(Ljava/lang/String;)V

    .line 620
    :cond_1
    invoke-static {p3}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$deleteToken$5$FirebaseMessaging(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->iid:Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-static {v1}, Lcom/google/firebase/messaging/Metadata;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FCM"

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;->deleteToken(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 417
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 419
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$deleteToken$6$FirebaseMessaging(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->gmsRpc:Lcom/google/firebase/messaging/GmsRpc;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/GmsRpc;->deleteToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getStore(Landroid/content/Context;)Lcom/google/firebase/messaging/Store;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getSubtype()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-static {v2}, Lcom/google/firebase/messaging/Metadata;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/messaging/Store;->deleteToken(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 435
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 437
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$getToken$4$FirebaseMessaging(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    .line 392
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->blockingGetToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 394
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$FirebaseMessaging(Ljava/lang/String;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->invokeOnTokenRefresh(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$1$FirebaseMessaging()V
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->isAutoInitEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->startSyncIfNecessary()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$2$FirebaseMessaging(Lcom/google/firebase/messaging/TopicsSubscriber;)V
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->isAutoInitEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicsSubscriber;->startTopicsSyncIfNecessary()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$3$FirebaseMessaging()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/messaging/ProxyNotificationInitializer;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public send(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 6

    .line 486
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gcm.intent.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.example.invalidpackage"

    .line 495
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    .line 502
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    const/high16 v3, 0x4000000

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 498
    :goto_0
    invoke-static {v2, v5, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "app"

    .line 496
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms"

    .line 504
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage;->populateSendMessageIntent(Landroid/content/Intent;)V

    .line 508
    iget-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    const-string v1, "com.google.android.gtalkservice.permission.GTALK_SERVICE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 487
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing \'to\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAutoInitEnabled(Z)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->autoInit:Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->setEnabled(Z)V

    return-void
.end method

.method public setDeliveryMetricsExportToBigQuery(Z)V
    .locals 0

    .line 337
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->setDeliveryMetricsExportToBigQuery(Z)V

    return-void
.end method

.method public setNotificationDelegationEnabled(Z)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->initExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/messaging/ProxyNotificationInitializer;->setEnableProxyNotification(Ljava/util/concurrent/Executor;Landroid/content/Context;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized setSyncScheduledOrRunning(Z)V
    .locals 0

    monitor-enter p0

    .line 539
    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->syncScheduledOrRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->topicsSubscriberTask:Lcom/google/android/gms/tasks/Task;

    new-instance v1, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$gnIJgjfncpTc7O8Mu0oTnrQxaJw;

    invoke-direct {v1, p1}, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$gnIJgjfncpTc7O8Mu0oTnrQxaJw;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized syncWithDelaySecondsInternal(J)V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x1e

    const-wide/16 v2, 0x2

    mul-long v2, v2, p1

    .line 544
    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/messaging/FirebaseMessaging;->MAX_DELAY_SEC:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 545
    new-instance v2, Lcom/google/firebase/messaging/SyncTask;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/messaging/SyncTask;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V

    .line 546
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->enqueueTaskWithDelaySeconds(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    .line 547
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->syncScheduledOrRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method tokenNeedsRefresh(Lcom/google/firebase/messaging/Store$Token;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 639
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->metadata:Lcom/google/firebase/messaging/Metadata;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/Metadata;->getAppVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/Store$Token;->needsRefresh(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public unsubscribeFromTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->topicsSubscriberTask:Lcom/google/android/gms/tasks/Task;

    new-instance v1, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$b3LMa_j4WoH1gmOglLpJ3RBDF8w;

    invoke-direct {v1, p1}, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$b3LMa_j4WoH1gmOglLpJ3RBDF8w;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
