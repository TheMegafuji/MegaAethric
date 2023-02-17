.class public final Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/ShippingAddressRequirements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wallet/ShippingAddressRequirements;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/ShippingAddressRequirements;Lcom/google/android/gms/wallet/zzal;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;->zza:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllowedCountryCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;
    .locals 2

    const-string v0, "allowedCountryCode can\'t be null or empty! If you don\'t have restrictions, just leave it unset."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;->zza:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    iget-object v1, v0, Lcom/google/android/gms/wallet/ShippingAddressRequirements;->zza:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/ShippingAddressRequirements;->zza:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;->zza:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    iget-object v0, v0, Lcom/google/android/gms/wallet/ShippingAddressRequirements;->zza:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAllowedCountryCodes(Ljava/util/Collection;)Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;->zza:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    iget-object v1, v0, Lcom/google/android/gms/wallet/ShippingAddressRequirements;->zza:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/ShippingAddressRequirements;->zza:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;->zza:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    iget-object v0, v0, Lcom/google/android/gms/wallet/ShippingAddressRequirements;->zza:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "allowedCountryCodes can\'t be null or empty! If you don\'t have restrictions, just leave it unset."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/google/android/gms/wallet/ShippingAddressRequirements;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;->zza:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    return-object v0
.end method
