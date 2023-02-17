.class public final Lcom/google/android/gms/internal/games/zzfr;
.super Lcom/google/android/gms/games/internal/zzc;
.source "com.google.android.gms:play-services-games@@23.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/games/zzfr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Landroid/os/Bundle;

.field private final zzb:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/games/zzfs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games/zzfs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games/zzfr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzfr;->zza:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/google/android/gms/internal/games/zzfr;->zzb:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/games/zzfq;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzc;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/games/zzfq;->zza()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/games/zzfr;->zza:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/google/android/gms/internal/games/zzfq;->zza:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzfr;->zzb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfr;->zza:Landroid/os/Bundle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfr;->zzb:Landroid/os/IBinder;

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
