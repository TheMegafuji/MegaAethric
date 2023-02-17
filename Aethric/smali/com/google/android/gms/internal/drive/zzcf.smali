.class final Lcom/google/android/gms/internal/drive/zzcf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;


# instance fields
.field private final zzdy:Lcom/google/android/gms/common/api/Status;

.field private final zzfm:Lcom/google/android/gms/drive/FileUploadPreferences;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/drive/zzcb;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzcf;->zzdy:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzcf;->zzfm:Lcom/google/android/gms/drive/FileUploadPreferences;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzcb;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/internal/drive/zzcc;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzcf;-><init>(Lcom/google/android/gms/internal/drive/zzcb;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;)V

    return-void
.end method


# virtual methods
.method public final getFileUploadPreferences()Lcom/google/android/gms/drive/FileUploadPreferences;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcf;->zzfm:Lcom/google/android/gms/drive/FileUploadPreferences;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcf;->zzdy:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
