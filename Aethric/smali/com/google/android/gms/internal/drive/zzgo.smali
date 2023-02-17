.class public final Lcom/google/android/gms/internal/drive/zzgo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/drive/TransferPreferences;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/drive/zzgo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbm:Z

.field private final zzbn:I

.field private final zzgy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzgp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzgo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzgo;->zzgy:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/drive/zzgo;->zzbn:I

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/drive/zzgo;->zzbm:Z

    return-void
.end method


# virtual methods
.method public final getBatteryUsagePreference()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzgo;->zzbn:I

    return v0
.end method

.method public final getNetworkPreference()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzgo;->zzgy:I

    return v0
.end method

.method public final isRoamingAllowed()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzgo;->zzbm:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzgo;->zzgy:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzgo;->zzbn:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzgo;->zzbm:Z

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 11
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
