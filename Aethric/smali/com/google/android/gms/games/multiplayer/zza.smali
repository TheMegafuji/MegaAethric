.class final Lcom/google/android/gms/games/multiplayer/zza;
.super Lcom/google/android/gms/games/multiplayer/zzb;
.source "com.google.android.gms:play-services-games@@23.1.0"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/zzb;->zza(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zza()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzb(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;-><init>()V

    return-object p1

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gms/games/multiplayer/zzb;->zza(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    move-result-object p1

    return-object p1
.end method
