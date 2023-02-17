.class public final Lcom/google/android/gms/wallet/TransactionInfo$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/TransactionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wallet/TransactionInfo;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/TransactionInfo;Lcom/google/android/gms/wallet/zzan;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/TransactionInfo$Builder;->zza:Lcom/google/android/gms/wallet/TransactionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/TransactionInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/TransactionInfo$Builder;->zza:Lcom/google/android/gms/wallet/TransactionInfo;

    iget-object v0, v0, Lcom/google/android/gms/wallet/TransactionInfo;->zzc:Ljava/lang/String;

    const-string v1, "currencyCode must be set!"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/wallet/TransactionInfo$Builder;->zza:Lcom/google/android/gms/wallet/TransactionInfo;

    iget v1, v0, Lcom/google/android/gms/wallet/TransactionInfo;->zza:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "totalPriceStatus must be set to one of WalletConstants.TotalPriceStatus!"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/wallet/TransactionInfo;->zzb:Ljava/lang/String;

    const-string v1, "An estimated total price must be set if totalPriceStatus is set to WalletConstants.TOTAL_PRICE_STATUS_ESTIMATED!"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/TransactionInfo$Builder;->zza:Lcom/google/android/gms/wallet/TransactionInfo;

    iget v1, v0, Lcom/google/android/gms/wallet/TransactionInfo;->zza:I

    if-ne v1, v2, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/wallet/TransactionInfo;->zzb:Ljava/lang/String;

    const-string v1, "An final total price must be set if totalPriceStatus is set to WalletConstants.TOTAL_PRICE_STATUS_FINAL!"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/wallet/TransactionInfo$Builder;->zza:Lcom/google/android/gms/wallet/TransactionInfo;

    return-object v0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/TransactionInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/TransactionInfo$Builder;->zza:Lcom/google/android/gms/wallet/TransactionInfo;

    iput-object p1, v0, Lcom/google/android/gms/wallet/TransactionInfo;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public setTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/TransactionInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/TransactionInfo$Builder;->zza:Lcom/google/android/gms/wallet/TransactionInfo;

    iput-object p1, v0, Lcom/google/android/gms/wallet/TransactionInfo;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public setTotalPriceStatus(I)Lcom/google/android/gms/wallet/TransactionInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/TransactionInfo$Builder;->zza:Lcom/google/android/gms/wallet/TransactionInfo;

    iput p1, v0, Lcom/google/android/gms/wallet/TransactionInfo;->zza:I

    return-object p0
.end method
