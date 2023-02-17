.class public final Lcom/google/android/gms/internal/drive/zzu;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/drive/zzu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzba:Ljava/lang/String;

.field private final zzbd:Lcom/google/android/gms/drive/DriveId;

.field private final zzdn:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field private final zzdo:Ljava/lang/Integer;

.field private final zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/drive/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;Ljava/lang/Integer;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzu;->zzdn:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    .line 12
    iput p2, p0, Lcom/google/android/gms/internal/drive/zzu;->zzj:I

    .line 13
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzu;->zzba:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzu;->zzbd:Lcom/google/android/gms/drive/DriveId;

    .line 15
    iput-object p5, p0, Lcom/google/android/gms/internal/drive/zzu;->zzdo:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzu;->zzdn:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzu;->zzj:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzu;->zzba:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzu;->zzbd:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzu;->zzdo:Ljava/lang/Integer;

    const/4 v1, 0x6

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntegerObject(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
