.class final Lcom/google/firebase/messaging/WakeLockHolder;
.super Ljava/lang/Object;
.source "WakeLockHolder.java"


# static fields
.field private static final EXTRA_WAKEFUL_INTENT:Ljava/lang/String; = "com.google.firebase.iid.WakeLockHolder.wakefulintent"

.field static final WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS:J

.field private static final syncObject:Ljava/lang/Object;

.field private static wakeLock:Lcom/google/android/gms/stats/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/WakeLockHolder;->WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS:J

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/WakeLockHolder;->syncObject:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquireWakeLock(Landroid/content/Intent;J)V
    .locals 2

    .line 162
    sget-object v0, Lcom/google/firebase/messaging/WakeLockHolder;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/WakeLockHolder;->wakeLock:Lcom/google/android/gms/stats/WakeLock;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 164
    invoke-static {p0, v1}, Lcom/google/firebase/messaging/WakeLockHolder;->setAsWakefulIntent(Landroid/content/Intent;Z)V

    .line 165
    sget-object p0, Lcom/google/firebase/messaging/WakeLockHolder;->wakeLock:Lcom/google/android/gms/stats/WakeLock;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/stats/WakeLock;->acquire(J)V

    .line 167
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static checkAndInitWakeLock(Landroid/content/Context;)V
    .locals 3

    .line 51
    sget-object v0, Lcom/google/firebase/messaging/WakeLockHolder;->wakeLock:Lcom/google/android/gms/stats/WakeLock;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/google/android/gms/stats/WakeLock;

    const/4 v1, 0x1

    const-string v2, "wake:com.google.firebase.iid.WakeLockHolder"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/stats/WakeLock;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/messaging/WakeLockHolder;->wakeLock:Lcom/google/android/gms/stats/WakeLock;

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/gms/stats/WakeLock;->setReferenceCounted(Z)V

    :cond_0
    return-void
.end method

.method static completeWakefulIntent(Landroid/content/Intent;)V
    .locals 2

    .line 141
    sget-object v0, Lcom/google/firebase/messaging/WakeLockHolder;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/WakeLockHolder;->wakeLock:Lcom/google/android/gms/stats/WakeLock;

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/firebase/messaging/WakeLockHolder;->isWakefulIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 143
    invoke-static {p0, v1}, Lcom/google/firebase/messaging/WakeLockHolder;->setAsWakefulIntent(Landroid/content/Intent;Z)V

    .line 144
    sget-object p0, Lcom/google/firebase/messaging/WakeLockHolder;->wakeLock:Lcom/google/android/gms/stats/WakeLock;

    invoke-virtual {p0}, Lcom/google/android/gms/stats/WakeLock;->release()V

    .line 146
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static initWakeLock(Landroid/content/Context;)V
    .locals 1

    .line 182
    sget-object v0, Lcom/google/firebase/messaging/WakeLockHolder;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/messaging/WakeLockHolder;->checkAndInitWakeLock(Landroid/content/Context;)V

    .line 184
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static isWakefulIntent(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$sendWakefulServiceIntent$0(Landroid/content/Intent;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 113
    invoke-static {p0}, Lcom/google/firebase/messaging/WakeLockHolder;->completeWakefulIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static reset()V
    .locals 2

    .line 197
    sget-object v0, Lcom/google/firebase/messaging/WakeLockHolder;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 198
    :try_start_0
    sput-object v1, Lcom/google/firebase/messaging/WakeLockHolder;->wakeLock:Lcom/google/android/gms/stats/WakeLock;

    .line 199
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static sendWakefulServiceIntent(Landroid/content/Context;Lcom/google/firebase/messaging/WithinAppServiceConnection;Landroid/content/Intent;)V
    .locals 3

    .line 100
    sget-object v0, Lcom/google/firebase/messaging/WakeLockHolder;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/messaging/WakeLockHolder;->checkAndInitWakeLock(Landroid/content/Context;)V

    .line 103
    invoke-static {p2}, Lcom/google/firebase/messaging/WakeLockHolder;->isWakefulIntent(Landroid/content/Intent;)Z

    move-result p0

    const/4 v1, 0x1

    .line 105
    invoke-static {p2, v1}, Lcom/google/firebase/messaging/WakeLockHolder;->setAsWakefulIntent(Landroid/content/Intent;Z)V

    if-nez p0, :cond_0

    .line 108
    sget-object p0, Lcom/google/firebase/messaging/WakeLockHolder;->wakeLock:Lcom/google/android/gms/stats/WakeLock;

    sget-wide v1, Lcom/google/firebase/messaging/WakeLockHolder;->WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS:J

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/stats/WakeLock;->acquire(J)V

    .line 112
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/WithinAppServiceConnection;->sendIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    sget-object p1, Lcom/google/firebase/messaging/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;->INSTANCE:Lcom/google/firebase/messaging/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;

    new-instance v1, Lcom/google/firebase/messaging/-$$Lambda$WakeLockHolder$Pq1vbyisTr72VwxIqp_0uExjRmk;

    invoke-direct {v1, p2}, Lcom/google/firebase/messaging/-$$Lambda$WakeLockHolder$Pq1vbyisTr72VwxIqp_0uExjRmk;-><init>(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 114
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static setAsWakefulIntent(Landroid/content/Intent;Z)V
    .locals 1

    const-string v0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    .line 118
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 3

    .line 69
    sget-object v0, Lcom/google/firebase/messaging/WakeLockHolder;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/messaging/WakeLockHolder;->checkAndInitWakeLock(Landroid/content/Context;)V

    .line 72
    invoke-static {p1}, Lcom/google/firebase/messaging/WakeLockHolder;->isWakefulIntent(Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x1

    .line 74
    invoke-static {p1, v2}, Lcom/google/firebase/messaging/WakeLockHolder;->setAsWakefulIntent(Landroid/content/Intent;Z)V

    .line 76
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 78
    monitor-exit v0

    return-object p0

    :cond_0
    if-nez v1, :cond_1

    .line 82
    sget-object p1, Lcom/google/firebase/messaging/WakeLockHolder;->wakeLock:Lcom/google/android/gms/stats/WakeLock;

    sget-wide v1, Lcom/google/firebase/messaging/WakeLockHolder;->WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS:J

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/stats/WakeLock;->acquire(J)V

    .line 85
    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
