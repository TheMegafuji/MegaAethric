.class abstract Lcom/google/android/gms/internal/drive/zzea;
.super Lcom/google/android/gms/internal/drive/zzau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzau<",
        "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/drive/zzdp;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzau;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzdp;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/drive/zzdq;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzea;-><init>(Lcom/google/android/gms/internal/drive/zzdp;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/drive/zzdz;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/drive/zzdz;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V

    return-object v0
.end method
