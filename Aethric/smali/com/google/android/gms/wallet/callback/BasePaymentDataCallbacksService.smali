.class public abstract Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService;
.super Lcom/google/android/gms/wallet/callback/zzd;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/wallet/callback/zzd;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createPaymentDataCallbacks()Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/wallet/callback/zzd;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/wallet/callback/zzd;->onCreate()V

    return-void
.end method

.method protected final onRunTask(Ljava/lang/String;Lcom/google/android/gms/wallet/callback/CallbackInput;Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wallet/callback/CallbackInput;",
            "Lcom/google/android/gms/wallet/callback/OnCompleteListener<",
            "Lcom/google/android/gms/wallet/callback/CallbackOutput;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/wallet/callback/CallbackInput;->getCallbackType()I

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService;->createPaymentDataCallbacks()Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/wallet/callback/CallbackInput;->getCallbackType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/gms/wallet/PaymentData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/wallet/callback/CallbackInput;->deserializeRequest(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/wallet/PaymentData;

    new-instance v0, Lcom/google/android/gms/wallet/callback/zze;

    invoke-direct {v0, p3}, Lcom/google/android/gms/wallet/callback/zze;-><init>(Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V

    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;->onPaymentAuthorized(Lcom/google/android/gms/wallet/PaymentData;Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/wallet/callback/CallbackInput;->getCallbackType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7
    sget-object v0, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-virtual {p2, v0}, Lcom/google/android/gms/wallet/callback/CallbackInput;->deserializeRequest(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;

    new-instance v0, Lcom/google/android/gms/wallet/callback/zzf;

    invoke-direct {v0, p3}, Lcom/google/android/gms/wallet/callback/zzf;-><init>(Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V

    .line 9
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;->onPaymentDataChanged(Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown Callback Types"

    .line 10
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Callback Types must be set"

    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
