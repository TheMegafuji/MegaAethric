.class public final Lcom/google/android/gms/internal/games/zzfq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field public zza:Landroid/os/IBinder;

.field public zzb:I

.field public zzc:I

.field public zzd:I

.field public zze:I

.field public zzf:I

.field public zzg:I


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/games/zzfq;->zzc:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/games/zzfq;->zzd:I

    iput p2, p0, Lcom/google/android/gms/internal/games/zzfq;->zze:I

    iput p2, p0, Lcom/google/android/gms/internal/games/zzfq;->zzf:I

    iput p2, p0, Lcom/google/android/gms/internal/games/zzfq;->zzg:I

    iput p1, p0, Lcom/google/android/gms/internal/games/zzfq;->zzb:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzfq;->zza:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfq;->zzb:I

    const-string v2, "popupLocationInfo.gravity"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfq;->zzc:I

    const-string v2, "popupLocationInfo.displayId"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfq;->zzd:I

    const-string v2, "popupLocationInfo.left"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfq;->zze:I

    const-string v2, "popupLocationInfo.top"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfq;->zzf:I

    const-string v2, "popupLocationInfo.right"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfq;->zzg:I

    const-string v2, "popupLocationInfo.bottom"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
