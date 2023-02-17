.class public final Lcom/google/android/gms/games/PlayerRef;
.super Lcom/google/android/gms/games/zzq;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/games/Player;


# instance fields
.field private final zza:Lcom/google/android/gms/games/internal/player/zzd;

.field private final zzb:Lcom/google/android/gms/games/PlayerLevelInfo;

.field private final zzc:Lcom/google/android/gms/games/internal/player/zzc;

.field private final zzd:Lcom/google/android/gms/games/zzx;

.field private final zze:Lcom/google/android/gms/games/zzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/zzq;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    new-instance p3, Lcom/google/android/gms/games/internal/player/zzd;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p3, v0}, Lcom/google/android/gms/games/internal/player/zzd;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    new-instance v1, Lcom/google/android/gms/games/internal/player/zzc;

    .line 3
    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/games/internal/player/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/zzd;)V

    iput-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zzc:Lcom/google/android/gms/games/internal/player/zzc;

    new-instance p3, Lcom/google/android/gms/games/zzx;

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    .line 4
    invoke-direct {p3, p1, p2, v1}, Lcom/google/android/gms/games/zzx;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/zzd;)V

    iput-object p3, p0, Lcom/google/android/gms/games/PlayerRef;->zzd:Lcom/google/android/gms/games/zzx;

    new-instance p3, Lcom/google/android/gms/games/zzc;

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    .line 5
    invoke-direct {p3, p1, p2, v1}, Lcom/google/android/gms/games/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/zzd;)V

    iput-object p3, p0, Lcom/google/android/gms/games/PlayerRef;->zze:Lcom/google/android/gms/games/zzc;

    iget-object p1, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/games/internal/player/zzd;->zzk:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/PlayerRef;->hasNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/games/internal/player/zzd;->zzk:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v1, -0x1

    cmp-long p3, p1, v1

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/games/internal/player/zzd;->zzl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    .line 9
    iget-object p2, p2, Lcom/google/android/gms/games/internal/player/zzd;->zzo:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result p2

    .line 10
    new-instance p3, Lcom/google/android/gms/games/PlayerLevel;

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzm:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzn:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p3

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    if-eq p1, p2, :cond_1

    new-instance p1, Lcom/google/android/gms/games/PlayerLevel;

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    .line 13
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzn:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzp:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p1

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    move-object v6, p1

    goto :goto_0

    :cond_1
    move-object v6, p3

    .line 16
    :goto_0
    new-instance p1, Lcom/google/android/gms/games/PlayerLevelInfo;

    iget-object p2, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object p2, p2, Lcom/google/android/gms/games/internal/player/zzd;->zzk:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p2}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object p2, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object p2, p2, Lcom/google/android/gms/games/internal/player/zzd;->zzq:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    move-object v0, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/games/PlayerLevelInfo;-><init>(JJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V

    iput-object p1, p0, Lcom/google/android/gms/games/PlayerRef;->zzb:Lcom/google/android/gms/games/PlayerLevelInfo;

    return-void

    .line 6
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzb:Lcom/google/android/gms/games/PlayerLevelInfo;

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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->zzo(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    return-object v0
.end method

.method public final getBannerImageLandscapeUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzC:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getBannerImageLandscapeUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBannerImagePortraitUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getBannerImagePortraitUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzF:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentPlayerInfo()Lcom/google/android/gms/games/CurrentPlayerInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zze:Lcom/google/android/gms/games/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/games/zzc;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zze:Lcom/google/android/gms/games/zzc;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Landroid/database/CharArrayBuffer;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzc:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/PlayerRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getHiResImageUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzf:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIconImageUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zze:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLastPlayedWithTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzj:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->hasColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzj:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzj:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzb:Lcom/google/android/gms/games/PlayerLevelInfo;

    return-object v0
.end method

.method public final getPlayerId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zza:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRelationshipInfo()Lcom/google/android/gms/games/PlayerRelationshipInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzd:Lcom/google/android/gms/games/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/games/zzx;->getFriendStatus()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/games/zzx;->zzb()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/games/zzx;->zza()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzd:Lcom/google/android/gms/games/zzx;

    return-object v0
.end method

.method public final getRetrievedTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzh:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle(Landroid/database/CharArrayBuffer;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzr:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/PlayerRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final hasHiResImage()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasIconImage()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzj(Lcom/google/android/gms/games/Player;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzl(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/PlayerEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzi:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final zzb()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzG:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->hasColumn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->hasNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/games/internal/player/zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzt:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzc:Lcom/google/android/gms/games/internal/player/zzc;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzb:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/zzq;->zzr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzB:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzz:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final zzh()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->hasColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zza:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->zzs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
