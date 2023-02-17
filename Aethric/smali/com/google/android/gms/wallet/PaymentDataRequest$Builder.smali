.class public final Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/PaymentDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wallet/PaymentDataRequest;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/PaymentDataRequest;Lcom/google/android/gms/wallet/zzab;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllowedPaymentMethod(I)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzf:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzf:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzf:Ljava/util/ArrayList;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAllowedPaymentMethods(Ljava/util/Collection;)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;"
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
    const-string v1, "allowedPaymentMethods can\'t be null or empty!"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzf:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzf:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzf:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/wallet/PaymentDataRequest;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzj:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzf:Ljava/util/ArrayList;

    const-string v1, "Allowed payment methods must be set! You can set it through addAllowedPaymentMethod() or addAllowedPaymentMethods() in the PaymentDataRequest Builder."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzc:Lcom/google/android/gms/wallet/CardRequirements;

    const-string v1, "Card requirements must be set!"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzg:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzh:Lcom/google/android/gms/wallet/TransactionInfo;

    const-string v1, "Transaction info must be set if paymentMethodTokenizationParameters is set!"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    return-object v0
.end method

.method public setCardRequirements(Lcom/google/android/gms/wallet/CardRequirements;)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzc:Lcom/google/android/gms/wallet/CardRequirements;

    return-object p0
.end method

.method public setEmailRequired(Z)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zza:Z

    return-object p0
.end method

.method public setPaymentMethodTokenizationParameters(Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzg:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    return-object p0
.end method

.method public setPhoneNumberRequired(Z)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzb:Z

    return-object p0
.end method

.method public setShippingAddressRequired(Z)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzd:Z

    return-object p0
.end method

.method public setShippingAddressRequirements(Lcom/google/android/gms/wallet/ShippingAddressRequirements;)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zze:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    return-object p0
.end method

.method public setTransactionInfo(Lcom/google/android/gms/wallet/TransactionInfo;)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzh:Lcom/google/android/gms/wallet/TransactionInfo;

    return-object p0
.end method

.method public setUiRequired(Z)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzi:Z

    return-object p0
.end method
