.class public final Lcom/google/android/gms/internal/drive/zzw;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/drive/zzw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzan:Ljava/lang/String;

.field private final zzdf:Lcom/google/android/gms/drive/Contents;

.field private final zzdn:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field private final zzdo:Ljava/lang/Integer;

.field private final zzdp:Lcom/google/android/gms/drive/DriveId;

.field private final zzdq:Z

.field private final zzdr:I

.field private final zzds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/drive/zzx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/ExecutionOptions;)V
    .locals 9

    .line 30
    invoke-virtual {p5}, Lcom/google/android/gms/drive/ExecutionOptions;->zzm()Z

    move-result v5

    .line 31
    invoke-virtual {p5}, Lcom/google/android/gms/drive/ExecutionOptions;->zzl()Ljava/lang/String;

    move-result-object v6

    .line 32
    invoke-virtual {p5}, Lcom/google/android/gms/drive/ExecutionOptions;->zzn()I

    move-result v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v8, p3

    .line 33
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/drive/zzw;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;IZLjava/lang/String;II)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;IZLjava/lang/String;II)V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    if-eqz p3, :cond_1

    if-eqz p8, :cond_1

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/drive/Contents;->getRequestId()I

    move-result v0

    if-ne v0, p8, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "inconsistent contents reference"

    .line 17
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :cond_1
    if-nez p4, :cond_3

    if-nez p3, :cond_3

    if-eqz p8, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Need a valid contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzw;->zzdp:Lcom/google/android/gms/drive/DriveId;

    .line 21
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzw;->zzdn:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    .line 22
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzw;->zzdf:Lcom/google/android/gms/drive/Contents;

    .line 23
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzw;->zzdo:Ljava/lang/Integer;

    .line 24
    iput-object p6, p0, Lcom/google/android/gms/internal/drive/zzw;->zzan:Ljava/lang/String;

    .line 25
    iput p7, p0, Lcom/google/android/gms/internal/drive/zzw;->zzdr:I

    .line 26
    iput-boolean p5, p0, Lcom/google/android/gms/internal/drive/zzw;->zzdq:Z

    .line 27
    iput p8, p0, Lcom/google/android/gms/internal/drive/zzw;->zzds:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzw;->zzdp:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzw;->zzdn:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzw;->zzdf:Lcom/google/android/gms/drive/Contents;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzw;->zzdo:Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntegerObject(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    .line 7
    iget-boolean p2, p0, Lcom/google/android/gms/internal/drive/zzw;->zzdq:Z

    const/4 v1, 0x6

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzw;->zzan:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9
    iget p2, p0, Lcom/google/android/gms/internal/drive/zzw;->zzdr:I

    const/16 v1, 0x8

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 10
    iget p2, p0, Lcom/google/android/gms/internal/drive/zzw;->zzds:I

    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
