.class final Lcom/google/android/gms/internal/drive/zzdi;
.super Ljava/lang/Object;


# instance fields
.field private zzgg:Lcom/google/android/gms/drive/events/OnChangeListener;

.field private zzgh:Lcom/google/android/gms/internal/drive/zzee;

.field private zzk:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/events/OnChangeListener;Lcom/google/android/gms/drive/DriveId;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    invoke-static {v0, p3}, Lcom/google/android/gms/drive/events/zzj;->zza(ILcom/google/android/gms/drive/DriveId;)Z

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdi;->zzgg:Lcom/google/android/gms/drive/events/OnChangeListener;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzdi;->zzk:Lcom/google/android/gms/drive/DriveId;

    .line 7
    new-instance p3, Lcom/google/android/gms/internal/drive/zzee;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzch;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzch;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/android/gms/internal/drive/zzdj;->zza(Lcom/google/android/gms/drive/events/OnChangeListener;)Lcom/google/android/gms/drive/events/ChangeListener;

    move-result-object p2

    invoke-direct {p3, v1, p1, v0, p2}, Lcom/google/android/gms/internal/drive/zzee;-><init>(Landroid/os/Looper;Landroid/content/Context;ILcom/google/android/gms/drive/events/zzi;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzdi;->zzgh:Lcom/google/android/gms/internal/drive/zzee;

    .line 10
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/drive/zzee;->zzf(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/drive/zzdi;)Lcom/google/android/gms/internal/drive/zzee;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/drive/zzdi;->zzgh:Lcom/google/android/gms/internal/drive/zzee;

    return-object p0
.end method
