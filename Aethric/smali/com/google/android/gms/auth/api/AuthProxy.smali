.class public final Lcom/google/android/gms/auth/api/AuthProxy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/auth/api/AuthProxyOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final ProxyApi:Lcom/google/android/gms/auth/api/proxy/ProxyApi;

.field public static final zza:Lcom/google/android/gms/common/api/Api$ClientKey;

.field private static final zzb:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/AuthProxy;->zza:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v0, Lcom/google/android/gms/auth/api/zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/AuthProxy;->zzb:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 3
    new-instance v1, Lcom/google/android/gms/common/api/Api;

    sget-object v2, Lcom/google/android/gms/auth/api/AuthProxy;->zza:Lcom/google/android/gms/common/api/Api$ClientKey;

    const-string v3, "Auth.PROXY_API"

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v1, Lcom/google/android/gms/auth/api/AuthProxy;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/auth/zzbt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzbt;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/AuthProxy;->ProxyApi:Lcom/google/android/gms/auth/api/proxy/ProxyApi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/AuthProxyOptions;)Lcom/google/android/gms/auth/api/proxy/ProxyClient;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzbo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/auth/zzbo;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/AuthProxyOptions;)V

    return-object v0
.end method

.method public static getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/AuthProxyOptions;)Lcom/google/android/gms/auth/api/proxy/ProxyClient;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/auth/zzbo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/auth/zzbo;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/AuthProxyOptions;)V

    return-object v0
.end method
