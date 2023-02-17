.class public abstract Lcom/google/android/gms/drive/zzu;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# instance fields
.field private volatile transient zzbt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/drive/zzu;->zzbt:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/drive/zzu;->zzbt:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 6
    iput-boolean v1, p0, Lcom/google/android/gms/drive/zzu;->zzbt:Z

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/zzu;->zza(Landroid/os/Parcel;I)V

    return-void
.end method

.method protected abstract zza(Landroid/os/Parcel;I)V
.end method
