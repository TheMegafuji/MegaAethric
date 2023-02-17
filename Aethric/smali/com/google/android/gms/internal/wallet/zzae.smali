.class final Lcom/google/android/gms/internal/wallet/zzae;
.super Lcom/google/android/gms/wallet/zzas;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

.field final synthetic zzb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wallet/zzaf;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;I)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/wallet/zzae;->zza:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iput p4, p0, Lcom/google/android/gms/internal/wallet/zzae;->zzb:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/zzas;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/wallet/zzac;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wallet/zzae;->zza(Lcom/google/android/gms/internal/wallet/zzac;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/wallet/zzac;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wallet/zzae;->zza:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iget v1, p0, Lcom/google/android/gms/internal/wallet/zzae;->zzb:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/wallet/zzac;->zzp(Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;I)V

    .line 2
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wallet/zzae;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
