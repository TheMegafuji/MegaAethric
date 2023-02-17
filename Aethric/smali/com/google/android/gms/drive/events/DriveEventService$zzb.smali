.class final Lcom/google/android/gms/drive/events/DriveEventService$zzb;
.super Lcom/google/android/gms/internal/drive/zzet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/events/DriveEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzb"
.end annotation


# instance fields
.field private final synthetic zzco:Lcom/google/android/gms/drive/events/DriveEventService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/events/DriveEventService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzco:Lcom/google/android/gms/drive/events/DriveEventService;

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/events/DriveEventService;Lcom/google/android/gms/drive/events/zzh;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/events/DriveEventService$zzb;-><init>(Lcom/google/android/gms/drive/events/DriveEventService;)V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/drive/zzfp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzco:Lcom/google/android/gms/drive/events/DriveEventService;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzco:Lcom/google/android/gms/drive/events/DriveEventService;

    invoke-static {v1}, Lcom/google/android/gms/drive/events/DriveEventService;->zza(Lcom/google/android/gms/drive/events/DriveEventService;)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzco:Lcom/google/android/gms/drive/events/DriveEventService;

    iget-object v1, v1, Lcom/google/android/gms/drive/events/DriveEventService;->zzck:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzco:Lcom/google/android/gms/drive/events/DriveEventService;

    iget-object v1, v1, Lcom/google/android/gms/drive/events/DriveEventService;->zzck:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    invoke-static {v1, p1}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->zza(Lcom/google/android/gms/drive/events/DriveEventService$zza;Lcom/google/android/gms/internal/drive/zzfp;)Landroid/os/Message;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzco:Lcom/google/android/gms/drive/events/DriveEventService;

    iget-object v1, v1, Lcom/google/android/gms/drive/events/DriveEventService;->zzck:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/google/android/gms/drive/events/DriveEventService;->zzx()Lcom/google/android/gms/common/internal/GmsLogger;

    move-result-object p1

    const-string v1, "DriveEventService"

    const-string v2, "Receiving event before initialize is completed."

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
