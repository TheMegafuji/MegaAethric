.class public final Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;,
        Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zza:I

.field zzb:Ljava/lang/String;

.field zzc:D

.field zzd:Ljava/lang/String;

.field zze:J

.field zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzf:I

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zza:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzc:D

    return-void
.end method

.method constructor <init>(ILjava/lang/String;DLjava/lang/String;JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzb:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzc:D

    iput-object p5, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzd:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zze:J

    iput p8, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzf:I

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;-><init>(Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;Lcom/google/android/gms/wallet/wobs/zzh;)V

    return-object v0
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyMicros()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zze:J

    return-wide v0
.end method

.method public getDouble()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzc:D

    return-wide v0
.end method

.method public getInt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zza:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzf:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zza:I

    const/4 v1, 0x2

    .line 2
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzb:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzc:D

    const/4 v3, 0x4

    .line 4
    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzd:Ljava/lang/String;

    const/4 v1, 0x5

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zze:J

    const/4 v2, 0x6

    .line 6
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzf:I

    const/4 v1, 0x7

    .line 7
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
