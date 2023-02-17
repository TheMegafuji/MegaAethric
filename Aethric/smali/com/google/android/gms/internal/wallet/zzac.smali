.class public final Lcom/google/android/gms/internal/wallet/zzac;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# instance fields
.field private final zze:Landroid/content/Context;

.field private final zzf:I

.field private final zzg:Ljava/lang/String;

.field private final zzh:I

.field private final zzi:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;IIZ)V
    .locals 7

    const/4 v3, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/wallet/zzac;->zze:Landroid/content/Context;

    iput p6, p0, Lcom/google/android/gms/internal/wallet/zzac;->zzf:I

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/wallet/zzac;->zzg:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/wallet/zzac;->zzh:I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/wallet/zzac;->zzi:Z

    return-void
.end method

.method private final zzu()Landroid/os/Bundle;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/wallet/zzac;->zzf:I

    iget-object v1, p0, Lcom/google/android/gms/internal/wallet/zzac;->zze:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/wallet/zzac;->zzg:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/wallet/zzac;->zzh:I

    iget-boolean v4, p0, Lcom/google/android/gms/internal/wallet/zzac;->zzi:Z

    new-instance v5, Landroid/os/Bundle;

    .line 2
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "com.google.android.gms.wallet.EXTRA_ENVIRONMENT"

    .line 3
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.google.android.gms.wallet.EXTRA_USING_ANDROID_PAY_BRAND"

    .line 4
    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "androidPackageName"

    .line 5
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    .line 7
    invoke-direct {v0, v2, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.wallet.EXTRA_BUYER_ACCOUNT"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v0, "com.google.android.gms.wallet.EXTRA_THEME"

    .line 8
    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v5
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/wallet/zzs;

    if-eqz v1, :cond_1

    .line 3
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/wallet/zzs;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/wallet/zzs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/wallet/zzs;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/wallet/zzk;->zzh:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xc042c0

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wallet.service.BIND"

    return-object v0
.end method

.method public final requiresAccount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final usesClientTelemetry()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzp(Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/wallet/zzw;

    iget-object v1, p0, Lcom/google/android/gms/internal/wallet/zzac;->zze:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/wallet/zzw;-><init>(Landroid/app/Activity;I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/wallet/zzac;->zzu()Landroid/os/Bundle;

    move-result-object p2

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wallet/zzac;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/wallet/zzs;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/internal/wallet/zzs;->zzc(Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/wallet/zzu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "WalletClientImpl"

    const-string v1, "RemoteException creating wallet objects"

    .line 4
    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x8

    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/wallet/zzx;->zzh(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/wallet/zzac;->zzu()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.gms.wallet.EXTRA_USING_AUTO_RESOLVABLE_RESULT"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/google/android/gms/internal/wallet/zzz;

    .line 3
    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/wallet/zzz;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wallet/zzac;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/wallet/zzs;

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/internal/wallet/zzs;->zzc(Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/wallet/zzu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "WalletClientImpl"

    const-string v0, "RemoteException creating wallet objects"

    .line 5
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x8

    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 6
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/wallet/zzx;->zzh(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/wallet/zzac;->zzu()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/wallet/zzaa;

    .line 2
    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/wallet/zzaa;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wallet/zzac;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/wallet/zzs;

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/internal/wallet/zzs;->zzd(Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/wallet/zzu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "WalletClientImpl"

    const-string v0, "RemoteException during getPaymentCardRecognitionIntent"

    .line 4
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/wallet/IsReadyToPayRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/wallet/zzy;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/wallet/zzy;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wallet/zzac;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/wallet/zzs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/wallet/zzac;->zzu()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lcom/google/android/gms/internal/wallet/zzs;->zze(Lcom/google/android/gms/wallet/IsReadyToPayRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/wallet/zzu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "WalletClientImpl"

    const-string v1, "RemoteException during isReadyToPay"

    .line 3
    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    const/4 p2, 0x0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/wallet/zzx;->zzc(Lcom/google/android/gms/common/api/Status;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/wallet/PaymentDataRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/wallet/zzac;->zzu()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.gms.wallet.EXTRA_USING_AUTO_RESOLVABLE_RESULT"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/google/android/gms/internal/wallet/zzab;

    .line 3
    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/wallet/zzab;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wallet/zzac;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/wallet/zzs;

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/internal/wallet/zzs;->zzf(Lcom/google/android/gms/wallet/PaymentDataRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/wallet/zzu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "WalletClientImpl"

    const-string v0, "RemoteException getting payment data"

    .line 5
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    const/4 p2, 0x0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/internal/wallet/zzx;->zzf(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wallet/PaymentData;Landroid/os/Bundle;)V

    return-void
.end method
