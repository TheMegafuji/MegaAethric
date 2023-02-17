.class public final Lcom/google/android/gms/wallet/CardRequirements$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/CardRequirements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wallet/CardRequirements;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/CardRequirements;Lcom/google/android/gms/wallet/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zza:Lcom/google/android/gms/wallet/CardRequirements;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllowedCardNetwork(I)Lcom/google/android/gms/wallet/CardRequirements$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zza:Lcom/google/android/gms/wallet/CardRequirements;

    iget-object v1, v0, Lcom/google/android/gms/wallet/CardRequirements;->zza:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/CardRequirements;->zza:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zza:Lcom/google/android/gms/wallet/CardRequirements;

    iget-object v0, v0, Lcom/google/android/gms/wallet/CardRequirements;->zza:Ljava/util/ArrayList;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAllowedCardNetworks(Ljava/util/Collection;)Lcom/google/android/gms/wallet/CardRequirements$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/wallet/CardRequirements$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "allowedCardNetworks can\'t be null or empty! You must provide a valid value from WalletConstants.CardNetwork."

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zza:Lcom/google/android/gms/wallet/CardRequirements;

    iget-object v1, v0, Lcom/google/android/gms/wallet/CardRequirements;->zza:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/CardRequirements;->zza:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zza:Lcom/google/android/gms/wallet/CardRequirements;

    iget-object v0, v0, Lcom/google/android/gms/wallet/CardRequirements;->zza:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/wallet/CardRequirements;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zza:Lcom/google/android/gms/wallet/CardRequirements;

    iget-object v0, v0, Lcom/google/android/gms/wallet/CardRequirements;->zza:Ljava/util/ArrayList;

    const-string v1, "Allowed card networks must be non-empty! You can set it through addAllowedCardNetwork() or addAllowedCardNetworks() in the CardRequirements Builder."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zza:Lcom/google/android/gms/wallet/CardRequirements;

    return-object v0
.end method

.method public setAllowPrepaidCards(Z)Lcom/google/android/gms/wallet/CardRequirements$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zza:Lcom/google/android/gms/wallet/CardRequirements;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/CardRequirements;->zzb:Z

    return-object p0
.end method

.method public setBillingAddressFormat(I)Lcom/google/android/gms/wallet/CardRequirements$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zza:Lcom/google/android/gms/wallet/CardRequirements;

    iput p1, v0, Lcom/google/android/gms/wallet/CardRequirements;->zzd:I

    return-object p0
.end method

.method public setBillingAddressRequired(Z)Lcom/google/android/gms/wallet/CardRequirements$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zza:Lcom/google/android/gms/wallet/CardRequirements;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/CardRequirements;->zzc:Z

    return-object p0
.end method
