.class public final Lcom/google/android/gms/games/zzx;
.super Lcom/google/android/gms/games/zzq;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/games/PlayerRelationshipInfo;


# instance fields
.field private final zza:Lcom/google/android/gms/games/internal/player/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/zzd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/zzq;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object p3, p0, Lcom/google/android/gms/games/zzx;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/zzv;->zzf(Lcom/google/android/gms/games/PlayerRelationshipInfo;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/zzv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/zzv;-><init>(Lcom/google/android/gms/games/PlayerRelationshipInfo;)V

    return-object v0
.end method

.method public final getFriendStatus()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/zzx;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzH:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/zzq;->zzq(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/zzv;->zzd(Lcom/google/android/gms/games/PlayerRelationshipInfo;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/zzv;->zze(Lcom/google/android/gms/games/PlayerRelationshipInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/zzv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/zzv;-><init>(Lcom/google/android/gms/games/PlayerRelationshipInfo;)V

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/games/zzw;->zza(Lcom/google/android/gms/games/zzv;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/zzx;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzJ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/zzq;->zzr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/zzx;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzI:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/zzq;->zzr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/zzx;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzK:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/zzq;->zzr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
