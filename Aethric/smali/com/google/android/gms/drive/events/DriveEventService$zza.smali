.class final Lcom/google/android/gms/drive/events/DriveEventService$zza;
.super Lcom/google/android/gms/internal/drive/zzir;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/events/DriveEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# instance fields
.field private final zzcp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/drive/events/DriveEventService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/events/DriveEventService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzir;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService$zza;->zzcp:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/events/DriveEventService;Lcom/google/android/gms/drive/events/zzh;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/events/DriveEventService$zza;-><init>(Lcom/google/android/gms/drive/events/DriveEventService;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/drive/events/DriveEventService$zza;)Landroid/os/Message;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->zzy()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/drive/events/DriveEventService$zza;Lcom/google/android/gms/internal/drive/zzfp;)Landroid/os/Message;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->zzb(Lcom/google/android/gms/internal/drive/zzfp;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/drive/zzfp;)Landroid/os/Message;
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method private final zzy()Landroid/os/Message;
    .locals 1

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 14
    invoke-static {}, Lcom/google/android/gms/drive/events/DriveEventService;->zzx()Lcom/google/android/gms/common/internal/GmsLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "DriveEventService"

    const-string v2, "Unexpected message type: %s"

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->wfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService$zza;->zzcp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/events/DriveEventService;

    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfp;

    invoke-static {v0, p1}, Lcom/google/android/gms/drive/events/DriveEventService;->zza(Lcom/google/android/gms/drive/events/DriveEventService;Lcom/google/android/gms/internal/drive/zzfp;)V

    return-void

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    return-void
.end method
