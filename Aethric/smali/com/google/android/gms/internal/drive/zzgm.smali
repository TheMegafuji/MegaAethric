.class public final Lcom/google/android/gms/internal/drive/zzgm;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/drive/zzgm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzba:Ljava/lang/String;

.field private final zzbb:[Ljava/lang/String;

.field private final zzbd:Lcom/google/android/gms/drive/DriveId;

.field private final zzbe:Lcom/google/android/gms/drive/query/internal/FilterHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzgn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzgm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/query/internal/FilterHolder;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzgm;->zzba:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzgm;->zzbb:[Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzgm;->zzbd:Lcom/google/android/gms/drive/DriveId;

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzgm;->zzbe:Lcom/google/android/gms/drive/query/internal/FilterHolder;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzgm;->zzba:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzgm;->zzbb:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzgm;->zzbd:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzgm;->zzbe:Lcom/google/android/gms/drive/query/internal/FilterHolder;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
