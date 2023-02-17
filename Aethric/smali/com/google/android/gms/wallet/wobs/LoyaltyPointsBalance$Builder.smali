.class public final Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;Lcom/google/android/gms/wallet/wobs/zzh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;->zza:Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;->zza:Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;

    return-object v0
.end method

.method public setDouble(D)Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;->zza:Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;

    iput-wide p1, v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzc:D

    const/4 p1, 0x2

    iput p1, v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzf:I

    return-object p0
.end method

.method public setInt(I)Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;->zza:Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;

    iput p1, v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zza:I

    const/4 p1, 0x0

    iput p1, v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzf:I

    return-object p0
.end method

.method public setMoney(Ljava/lang/String;J)Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;->zza:Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;

    iput-object p1, v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzd:Ljava/lang/String;

    iput-wide p2, v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zze:J

    const/4 p1, 0x3

    iput p1, v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzf:I

    return-object p0
.end method

.method public setString(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;->zza:Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;

    iput-object p1, v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzb:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzf:I

    return-object p0
.end method
