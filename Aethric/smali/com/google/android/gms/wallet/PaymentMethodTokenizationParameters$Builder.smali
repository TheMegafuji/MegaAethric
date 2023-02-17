.class public final Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;Lcom/google/android/gms/wallet/zzae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->zza:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;
    .locals 1

    const-string v0, "Tokenization parameter name must not be empty"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "Tokenization parameter value must not be empty"

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->zza:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    iget-object v0, v0, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;->zzb:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->zza:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    return-object v0
.end method

.method public setPaymentMethodTokenizationType(I)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->zza:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    iput p1, v0, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;->zza:I

    return-object p0
.end method
