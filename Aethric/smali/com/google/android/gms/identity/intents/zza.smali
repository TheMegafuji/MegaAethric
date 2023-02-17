.class final Lcom/google/android/gms/identity/intents/zza;
.super Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
.source "com.google.android.gms:play-services-identity@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
        "Lcom/google/android/gms/internal/identity/zze;",
        "Lcom/google/android/gms/identity/intents/Address$AddressOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;
    .locals 8

    .line 1
    check-cast p4, Lcom/google/android/gms/identity/intents/Address$AddressOptions;

    .line 2
    instance-of v0, p1, Landroid/app/Activity;

    const-string v1, "An Activity must be used for Address APIs"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p4, :cond_0

    .line 3
    new-instance p4, Lcom/google/android/gms/identity/intents/Address$AddressOptions;

    invoke-direct {p4}, Lcom/google/android/gms/identity/intents/Address$AddressOptions;-><init>()V

    .line 4
    :cond_0
    new-instance v7, Lcom/google/android/gms/internal/identity/zze;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iget v4, p4, Lcom/google/android/gms/identity/intents/Address$AddressOptions;->theme:I

    move-object v0, v7

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/identity/zze;-><init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object v7
.end method
