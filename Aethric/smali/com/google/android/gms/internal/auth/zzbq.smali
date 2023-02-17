.class final Lcom/google/android/gms/internal/auth/zzbq;
.super Lcom/google/android/gms/internal/auth/zzbi;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/zzbt;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/auth/zzbq;->zza:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzbi;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Lcom/google/android/gms/internal/auth/zzbh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/auth/zzbp;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/auth/zzbp;-><init>(Lcom/google/android/gms/internal/auth/zzbq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzbq;->zza:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/auth/zzbh;->zze(Lcom/google/android/gms/internal/auth/zzbg;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V

    return-void
.end method
