.class public final Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;Lcom/google/android/gms/wallet/zzh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zza:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zza:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iget-object v1, v0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->zzc:Lcom/google/android/gms/wallet/GiftCardWalletObject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->zza:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    add-int/2addr v1, v4

    iget-object v0, v0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->zzb:Lcom/google/android/gms/wallet/OfferWalletObject;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    :goto_2
    add-int/2addr v1, v0

    if-ne v1, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    const-string v0, "CreateWalletObjectsRequest must have exactly one Wallet Object"

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zza:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    return-object v0
.end method

.method public setCreateMode(I)Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zza:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iput p1, v0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->zzd:I

    return-object p0
.end method

.method public setGiftCardWalletObject(Lcom/google/android/gms/wallet/GiftCardWalletObject;)Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zza:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->zzc:Lcom/google/android/gms/wallet/GiftCardWalletObject;

    return-object p0
.end method

.method public setLoyaltyWalletObject(Lcom/google/android/gms/wallet/LoyaltyWalletObject;)Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zza:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->zza:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    return-object p0
.end method

.method public setOfferWalletObject(Lcom/google/android/gms/wallet/OfferWalletObject;)Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zza:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->zzb:Lcom/google/android/gms/wallet/OfferWalletObject;

    return-object p0
.end method
