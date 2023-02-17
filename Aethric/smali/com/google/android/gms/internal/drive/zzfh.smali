.class public final Lcom/google/android/gms/internal/drive/zzfh;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/drive/zzfh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzes:Lcom/google/android/gms/drive/Contents;

.field final zzhv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/drive/zzfi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzfi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzfh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/Contents;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzfh;->zzes:Lcom/google/android/gms/drive/Contents;

    .line 9
    iput-boolean p2, p0, Lcom/google/android/gms/internal/drive/zzfh;->zzhv:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzfh;->zzes:Lcom/google/android/gms/drive/Contents;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    iget-boolean p2, p0, Lcom/google/android/gms/internal/drive/zzfh;->zzhv:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzar()Lcom/google/android/gms/drive/Contents;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfh;->zzes:Lcom/google/android/gms/drive/Contents;

    return-object v0
.end method
