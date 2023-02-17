.class public final Lcom/google/android/gms/internal/identity/zze;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-identity@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/internal/identity/zzh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zze:Landroid/app/Activity;

.field private zzf:Lcom/google/android/gms/internal/identity/zzd;

.field private final zzg:Ljava/lang/String;

.field private final zzh:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0xc

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccountName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/identity/zze;->zzg:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/identity/zze;->zze:Landroid/app/Activity;

    iput p4, p0, Lcom/google/android/gms/internal/identity/zze;->zzh:I

    return-void
.end method


# virtual methods
.method protected final bridge synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.identity.intents.internal.IAddressService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/identity/zzh;

    if-eqz v1, :cond_1

    .line 3
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/identity/zzh;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/identity/zzh;

    .line 4
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/identity/zzh;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final disconnect()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/identity/zze;->zzf:Lcom/google/android/gms/internal/identity/zzd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/identity/zzd;->zzb(Lcom/google/android/gms/internal/identity/zzd;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/identity/zze;->zzf:Lcom/google/android/gms/internal/identity/zzd;

    :cond_0
    return-void
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.identity.intents.internal.IAddressService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.identity.service.BIND"

    return-object v0
.end method

.method public final requiresAccount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzp(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->checkConnected()V

    new-instance v0, Lcom/google/android/gms/internal/identity/zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/identity/zze;->zze:Landroid/app/Activity;

    .line 2
    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/identity/zzd;-><init>(ILandroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/identity/zze;->zzf:Lcom/google/android/gms/internal/identity/zzd;

    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    .line 3
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.google.android.gms.identity.intents.EXTRA_CALLING_PACKAGE_NAME"

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/identity/zze;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/identity/zze;->zzg:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/gms/internal/identity/zze;->zzg:Ljava/lang/String;

    const-string v2, "com.google"

    .line 7
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.identity.intents.EXTRA_ACCOUNT"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v0, "com.google.android.gms.identity.intents.EXTRA_THEME"

    iget v1, p0, Lcom/google/android/gms/internal/identity/zze;->zzh:I

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/identity/zzh;

    iget-object v1, p0, Lcom/google/android/gms/internal/identity/zze;->zzf:Lcom/google/android/gms/internal/identity/zzd;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/identity/zzg;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/identity/zzh;->zzc(Lcom/google/android/gms/internal/identity/zzg;Lcom/google/android/gms/identity/intents/UserAddressRequest;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "AddressClientImpl"

    const-string v0, "Exception requesting user address"

    .line 11
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Landroid/os/Bundle;

    .line 12
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 p2, 0x22b

    const-string v0, "com.google.android.gms.identity.intents.EXTRA_ERROR_CODE"

    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/identity/zze;->zzf:Lcom/google/android/gms/internal/identity/zzd;

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/identity/zzd;

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/identity/zzd;->zzc(ILandroid/os/Bundle;)V

    return-void
.end method
