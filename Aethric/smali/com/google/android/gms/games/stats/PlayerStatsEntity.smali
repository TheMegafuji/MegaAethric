.class public Lcom/google/android/gms/games/stats/PlayerStatsEntity;
.super Lcom/google/android/gms/games/internal/zzc;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/games/stats/PlayerStats;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/stats/PlayerStatsEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:F

.field private final zzb:F

.field private final zzc:I

.field private final zzd:I

.field private final zze:I

.field private final zzf:F

.field private final zzg:F

.field private final zzh:Landroid/os/Bundle;

.field private final zzi:F

.field private final zzj:F

.field private final zzk:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/stats/zza;

    invoke-direct {v0}, Lcom/google/android/gms/games/stats/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(FFIIIFFLandroid/os/Bundle;FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzc;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zza:F

    iput p2, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzb:F

    iput p3, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzc:I

    iput p4, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzd:I

    iput p5, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zze:I

    iput p6, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzf:F

    iput p7, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzg:F

    iput-object p8, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzh:Landroid/os/Bundle;

    iput p9, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzi:F

    iput p10, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzj:F

    iput p11, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzk:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/stats/PlayerStats;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzc;-><init>()V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getAverageSessionLength()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zza:F

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getChurnProbability()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzb:F

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getDaysSinceLastPlayed()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzc:I

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfPurchases()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzd:I

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfSessions()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zze:I

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSessionPercentile()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzf:F

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendPercentile()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzg:F

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendProbability()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzi:F

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getHighSpenderProbability()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzj:F

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getTotalSpendNext28Days()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzk:F

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zza()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzh:Landroid/os/Bundle;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/games/stats/PlayerStats;)I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getAverageSessionLength()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getChurnProbability()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getDaysSinceLastPlayed()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfPurchases()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfSessions()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSessionPercentile()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendPercentile()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendProbability()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getHighSpenderProbability()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getTotalSpendNext28Days()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/16 v1, 0x9

    aput-object p0, v0, v1

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zzc(Lcom/google/android/gms/games/stats/PlayerStats;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getAverageSessionLength()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "AverageSessionLength"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getChurnProbability()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "ChurnProbability"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getDaysSinceLastPlayed()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DaysSinceLastPlayed"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfPurchases()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NumberOfPurchases"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfSessions()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NumberOfSessions"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSessionPercentile()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "SessionPercentile"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendPercentile()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "SpendPercentile"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendProbability()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "SpendProbability"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getHighSpenderProbability()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "HighSpenderProbability"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 11
    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getTotalSpendNext28Days()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "TotalSpendNext28Days"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zzd(Lcom/google/android/gms/games/stats/PlayerStats;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/games/stats/PlayerStats;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/games/stats/PlayerStats;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getAverageSessionLength()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getAverageSessionLength()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getChurnProbability()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getChurnProbability()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getDaysSinceLastPlayed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getDaysSinceLastPlayed()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfPurchases()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfPurchases()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfSessions()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfSessions()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSessionPercentile()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSessionPercentile()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendPercentile()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendPercentile()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendProbability()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendProbability()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getHighSpenderProbability()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getHighSpenderProbability()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getTotalSpendNext28Days()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getTotalSpendNext28Days()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzd(Lcom/google/android/gms/games/stats/PlayerStats;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final getAverageSessionLength()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zza:F

    return v0
.end method

.method public final getChurnProbability()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzb:F

    return v0
.end method

.method public final getDaysSinceLastPlayed()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzc:I

    return v0
.end method

.method public final getHighSpenderProbability()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzj:F

    return v0
.end method

.method public final getNumberOfPurchases()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzd:I

    return v0
.end method

.method public final getNumberOfSessions()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zze:I

    return v0
.end method

.method public final getSessionPercentile()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzf:F

    return v0
.end method

.method public final getSpendPercentile()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzg:F

    return v0
.end method

.method public final getSpendProbability()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzi:F

    return v0
.end method

.method public final getTotalSpendNext28Days()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzk:F

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzb(Lcom/google/android/gms/games/stats/PlayerStats;)I

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
    invoke-static {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzc(Lcom/google/android/gms/games/stats/PlayerStats;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/stats/zza;->zza(Lcom/google/android/gms/games/stats/PlayerStatsEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzh:Landroid/os/Bundle;

    return-object v0
.end method
