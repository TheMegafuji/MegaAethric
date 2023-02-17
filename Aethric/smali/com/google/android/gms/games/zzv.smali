.class public final Lcom/google/android/gms/games/zzv;
.super Lcom/google/android/gms/games/internal/zzc;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/games/PlayerRelationshipInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/zzv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:I

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/zzv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzc;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/zzv;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/games/zzv;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/zzv;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/zzv;->zzd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/PlayerRelationshipInfo;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzc;-><init>()V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->getFriendStatus()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/zzv;->zza:I

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/zzv;->zzb:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zza()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/zzv;->zzc:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zzc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/zzv;->zzd:Ljava/lang/String;

    return-void
.end method

.method static zzd(Lcom/google/android/gms/games/PlayerRelationshipInfo;)I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->getFriendStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zzb()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zza()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zzc()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zze(Lcom/google/android/gms/games/PlayerRelationshipInfo;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->getFriendStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FriendStatus"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zzb()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zzb()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Nickname"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 5
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zza()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zza()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InvitationNickname"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 7
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zzc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zza()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NicknameAbuseReportToken"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zzf(Lcom/google/android/gms/games/PlayerRelationshipInfo;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/games/PlayerRelationshipInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/games/PlayerRelationshipInfo;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->getFriendStatus()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->getFriendStatus()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->zzc()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/zzv;->zzf(Lcom/google/android/gms/games/PlayerRelationshipInfo;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final getFriendStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/zzv;->zza:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/zzv;->zzd(Lcom/google/android/gms/games/PlayerRelationshipInfo;)I

    move-result v0

    return v0
.end method

.method public final isDataValid()Z
    .locals 1

    const/4 v0, 0x1

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
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/zzw;->zza(Lcom/google/android/gms/games/zzv;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/zzv;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/zzv;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/zzv;->zzd:Ljava/lang/String;

    return-object v0
.end method
