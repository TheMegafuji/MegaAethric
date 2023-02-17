.class abstract Lcom/google/android/gms/internal/drive/zzcg;
.super Lcom/google/android/gms/internal/drive/zzau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzau<",
        "Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfk:Lcom/google/android/gms/internal/drive/zzcb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzcb;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzcg;->zzfk:Lcom/google/android/gms/internal/drive/zzcb;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzau;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 3

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/drive/zzcf;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzcg;->zzfk:Lcom/google/android/gms/internal/drive/zzcb;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/google/android/gms/internal/drive/zzcf;-><init>(Lcom/google/android/gms/internal/drive/zzcb;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/internal/drive/zzcc;)V

    return-object v0
.end method
