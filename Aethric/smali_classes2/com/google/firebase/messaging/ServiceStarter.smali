.class public Lcom/google/firebase/messaging/ServiceStarter;
.super Ljava/lang/Object;
.source "ServiceStarter.java"


# static fields
.field static final ACTION_MESSAGING_EVENT:Ljava/lang/String; = "com.google.firebase.MESSAGING_EVENT"

.field static final ERROR_ILLEGAL_STATE_EXCEPTION:I = 0x192

.field static final ERROR_ILLEGAL_STATE_EXCEPTION_FALLBACK_TO_BIND:I = 0x193

.field static final ERROR_NOT_FOUND:I = 0x194

.field static final ERROR_SECURITY_EXCEPTION:I = 0x191

.field public static final ERROR_UNKNOWN:I = 0x1f4

.field private static final EXTRA_WRAPPED_INTENT:Ljava/lang/String; = "wrapped_intent"

.field private static final PERMISSIONS_MISSING_HINT:Ljava/lang/String; = "this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

.field public static final SUCCESS:I = -0x1

.field private static instance:Lcom/google/firebase/messaging/ServiceStarter;


# instance fields
.field private firebaseMessagingServiceClassName:Ljava/lang/String;

.field private hasAccessNetworkStatePermission:Ljava/lang/Boolean;

.field private hasWakeLockPermission:Ljava/lang/Boolean;

.field private final messagingEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/google/firebase/messaging/ServiceStarter;->firebaseMessagingServiceClassName:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/google/firebase/messaging/ServiceStarter;->hasWakeLockPermission:Ljava/lang/Boolean;

    .line 110
    iput-object v0, p0, Lcom/google/firebase/messaging/ServiceStarter;->hasAccessNetworkStatePermission:Ljava/lang/Boolean;

    .line 113
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/ServiceStarter;->messagingEvents:Ljava/util/Queue;

    return-void
.end method

.method private doStartService(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 4

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/messaging/ServiceStarter;->resolveServiceClassName(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseMessaging"

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    .line 150
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restricting intent to a specific service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/ServiceStarter;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    invoke-static {p1, p2}, Lcom/google/firebase/messaging/WakeLockHolder;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    const-string p2, "Missing wake lock permission, service start may be delayed"

    .line 162
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez p1, :cond_3

    const-string p1, "Error while delivering the message: ServiceIntent not found."

    .line 165
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x194

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1

    :catch_0
    move-exception p1

    .line 177
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to start service while in background: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x192

    return p1

    :catch_1
    move-exception p1

    const-string p2, "Error while delivering the message to the serviceIntent"

    .line 172
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x191

    return p1
.end method

.method static declared-synchronized getInstance()Lcom/google/firebase/messaging/ServiceStarter;
    .locals 2

    const-class v0, Lcom/google/firebase/messaging/ServiceStarter;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/ServiceStarter;->instance:Lcom/google/firebase/messaging/ServiceStarter;

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Lcom/google/firebase/messaging/ServiceStarter;

    invoke-direct {v1}, Lcom/google/firebase/messaging/ServiceStarter;-><init>()V

    sput-object v1, Lcom/google/firebase/messaging/ServiceStarter;->instance:Lcom/google/firebase/messaging/ServiceStarter;

    .line 119
    :cond_0
    sget-object v1, Lcom/google/firebase/messaging/ServiceStarter;->instance:Lcom/google/firebase/messaging/ServiceStarter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized resolveServiceClassName(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/ServiceStarter;->firebaseMessagingServiceClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 203
    iget-object p1, p0, Lcom/google/firebase/messaging/ServiceStarter;->firebaseMessagingServiceClassName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 205
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 206
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1

    goto :goto_2

    .line 211
    :cond_1
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    .line 224
    :cond_2
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/ServiceStarter;->firebaseMessagingServiceClassName:Ljava/lang/String;

    goto :goto_0

    .line 227
    :cond_3
    iget-object p1, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/firebase/messaging/ServiceStarter;->firebaseMessagingServiceClassName:Ljava/lang/String;

    .line 229
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/messaging/ServiceStarter;->firebaseMessagingServiceClassName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :goto_1
    :try_start_2
    const-string p1, "FirebaseMessaging"

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error resolving target intent service, skipping classname enforcement. Resolved service was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    monitor-exit p0

    return-object v0

    :cond_5
    :goto_2
    :try_start_3
    const-string p1, "FirebaseMessaging"

    const-string p2, "Failed to resolve target intent service, skipping classname enforcement"

    .line 207
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static setForTesting(Lcom/google/firebase/messaging/ServiceStarter;)V
    .locals 0

    .line 274
    sput-object p0, Lcom/google/firebase/messaging/ServiceStarter;->instance:Lcom/google/firebase/messaging/ServiceStarter;

    return-void
.end method


# virtual methods
.method getMessagingEvent()Landroid/content/Intent;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/firebase/messaging/ServiceStarter;->messagingEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method hasAccessNetworkStatePermission(Landroid/content/Context;)Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/firebase/messaging/ServiceStarter;->hasAccessNetworkStatePermission:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 255
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/ServiceStarter;->hasAccessNetworkStatePermission:Ljava/lang/Boolean;

    .line 259
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/messaging/ServiceStarter;->hasWakeLockPermission:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    const-string v0, "FirebaseMessaging"

    .line 260
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    .line 261
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/messaging/ServiceStarter;->hasAccessNetworkStatePermission:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method hasWakeLockPermission(Landroid/content/Context;)Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/firebase/messaging/ServiceStarter;->hasWakeLockPermission:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "android.permission.WAKE_LOCK"

    .line 235
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/ServiceStarter;->hasWakeLockPermission:Ljava/lang/Boolean;

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/messaging/ServiceStarter;->hasWakeLockPermission:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    const-string v0, "FirebaseMessaging"

    .line 240
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    .line 241
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/messaging/ServiceStarter;->hasWakeLockPermission:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public startMessagingService(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 2

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Starting service"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/ServiceStarter;->messagingEvents:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 140
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/messaging/ServiceStarter;->doStartService(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p1

    return p1
.end method
