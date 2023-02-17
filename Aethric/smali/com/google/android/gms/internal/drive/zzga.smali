.class public final Lcom/google/android/gms/internal/drive/zzga;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/drive/zzga;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzil:Lcom/google/android/gms/internal/drive/zzgo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzgb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzga;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/drive/zzgo;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzga;->zzil:Lcom/google/android/gms/internal/drive/zzgo;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzga;->zzil:Lcom/google/android/gms/internal/drive/zzgo;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzax()Lcom/google/android/gms/drive/TransferPreferences;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzga;->zzil:Lcom/google/android/gms/internal/drive/zzgo;

    return-object v0
.end method
