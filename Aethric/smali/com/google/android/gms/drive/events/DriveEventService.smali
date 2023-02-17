.class public Lcom/google/android/gms/drive/events/DriveEventService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/android/gms/drive/events/ChangeListener;
.implements Lcom/google/android/gms/drive/events/CompletionListener;
.implements Lcom/google/android/gms/drive/events/zzd;
.implements Lcom/google/android/gms/drive/events/zzi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/events/DriveEventService$zzb;,
        Lcom/google/android/gms/drive/events/DriveEventService$zza;
    }
.end annotation


# static fields
.field public static final ACTION_HANDLE_EVENT:Ljava/lang/String; = "com.google.android.gms.drive.events.HANDLE_EVENT"

.field private static final zzbz:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final name:Ljava/lang/String;

.field private zzcj:Ljava/util/concurrent/CountDownLatch;

.field zzck:Lcom/google/android/gms/drive/events/DriveEventService$zza;

.field zzcl:Z

.field private zzcm:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "DriveEventService"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/events/DriveEventService;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const-string v0, "DriveEventService"

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/events/DriveEventService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzcl:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzcm:I

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/drive/events/DriveEventService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/drive/events/DriveEventService;->zzw()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/drive/events/DriveEventService;Lcom/google/android/gms/internal/drive/zzfp;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/events/DriveEventService;->zza(Lcom/google/android/gms/internal/drive/zzfp;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/drive/zzfp;)V
    .locals 7

    const-string v0, "DriveEventService"

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzfp;->zzat()Lcom/google/android/gms/drive/events/DriveEvent;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 46
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v3

    if-eq v3, v2, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    const/4 v5, 0x7

    if-eq v3, v5, :cond_0

    .line 56
    sget-object v3, Lcom/google/android/gms/drive/events/DriveEventService;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v4, "Unhandled event: %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/android/gms/common/internal/GmsLogger;->wfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 53
    :cond_0
    check-cast p1, Lcom/google/android/gms/drive/events/zzv;

    .line 54
    sget-object v3, Lcom/google/android/gms/drive/events/DriveEventService;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v5, "Unhandled transfer state event in %s: %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gms/drive/events/DriveEventService;->name:Ljava/lang/String;

    aput-object v6, v4, v1

    aput-object p1, v4, v2

    invoke-virtual {v3, v0, v5, v4}, Lcom/google/android/gms/common/internal/GmsLogger;->wfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/events/zzb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/events/DriveEventService;->zza(Lcom/google/android/gms/drive/events/zzb;)V

    return-void

    .line 49
    :cond_2
    check-cast p1, Lcom/google/android/gms/drive/events/CompletionEvent;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/events/DriveEventService;->onCompletion(Lcom/google/android/gms/drive/events/CompletionEvent;)V

    return-void

    .line 47
    :cond_3
    check-cast p1, Lcom/google/android/gms/drive/events/ChangeEvent;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/events/DriveEventService;->onChange(Lcom/google/android/gms/drive/events/ChangeEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 59
    sget-object v3, Lcom/google/android/gms/drive/events/DriveEventService;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/drive/events/DriveEventService;->name:Ljava/lang/String;

    aput-object v4, v2, v1

    const-string v1, "Error handling event in %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/drive/events/DriveEventService;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzcj:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private final zzw()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/drive/events/DriveEventService;->getCallingUid()I

    move-result v0

    .line 62
    iget v1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzcm:I

    if-ne v0, v1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/UidVerifier;->isGooglePlayServicesUid(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iput v0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzcm:I

    return-void

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not GooglePlayServices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zzx()Lcom/google/android/gms/common/internal/GmsLogger;
    .locals 1

    .line 69
    sget-object v0, Lcom/google/android/gms/drive/events/DriveEventService;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    return-object v0
.end method


# virtual methods
.method protected getCallingUid()I
    .locals 1

    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "com.google.android.gms.drive.events.HANDLE_EVENT"

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzck:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzcl:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzcl:Z

    .line 11
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 12
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzcj:Ljava/util/concurrent/CountDownLatch;

    .line 13
    new-instance p1, Lcom/google/android/gms/drive/events/zzh;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/drive/events/zzh;-><init>(Lcom/google/android/gms/drive/events/DriveEventService;Ljava/util/concurrent/CountDownLatch;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/drive/events/zzh;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x1388

    .line 15
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-virtual {v1, v2, v3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 18
    sget-object p1, Lcom/google/android/gms/drive/events/DriveEventService;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "DriveEventService"

    const-string v2, "Failed to synchronously initialize event handler."

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to start event handler"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 22
    :cond_0
    :goto_0
    new-instance p1, Lcom/google/android/gms/drive/events/DriveEventService$zzb;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/drive/events/DriveEventService$zzb;-><init>(Lcom/google/android/gms/drive/events/DriveEventService;Lcom/google/android/gms/drive/events/zzh;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzb;->asBinder()Landroid/os/IBinder;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 23
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onChange(Lcom/google/android/gms/drive/events/ChangeEvent;)V
    .locals 4

    .line 38
    sget-object v0, Lcom/google/android/gms/drive/events/DriveEventService;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/drive/events/DriveEventService;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "DriveEventService"

    const-string v2, "Unhandled change event in %s: %s"

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->wfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCompletion(Lcom/google/android/gms/drive/events/CompletionEvent;)V
    .locals 4

    .line 42
    sget-object v0, Lcom/google/android/gms/drive/events/DriveEventService;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/drive/events/DriveEventService;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "DriveEventService"

    const-string v2, "Unhandled completion event in %s: %s"

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->wfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 5

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzck:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzck:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    invoke-static {v0}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->zza(Lcom/google/android/gms/drive/events/DriveEventService$zza;)Landroid/os/Message;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzck:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzck:Lcom/google/android/gms/drive/events/DriveEventService$zza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzcj:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    sget-object v1, Lcom/google/android/gms/drive/events/DriveEventService;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v2, "DriveEventService"

    const-string v3, "Failed to synchronously quit event handler. Will quit itself"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :catch_0
    :cond_0
    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->zzcj:Ljava/util/concurrent/CountDownLatch;

    .line 36
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/drive/events/zzb;)V
    .locals 4

    .line 40
    sget-object v0, Lcom/google/android/gms/drive/events/DriveEventService;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/drive/events/DriveEventService;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "DriveEventService"

    const-string v2, "Unhandled changes available event in %s: %s"

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->wfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
