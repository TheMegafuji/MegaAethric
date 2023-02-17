.class final Lcom/google/android/gms/games/internal/game/zzb;
.super Lcom/google/android/gms/games/internal/game/zzc;
.source "com.google.android.gms:play-services-games@@23.1.0"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/game/zzc;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/game/zzc;->zza(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzc()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzd(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zze(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 7
    :goto_0
    new-instance v3, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    .line 9
    invoke-direct {v3, v0, v1, v2, p1}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v3

    .line 3
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/google/android/gms/games/internal/game/zzc;->zza(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    move-result-object p1

    return-object p1
.end method
