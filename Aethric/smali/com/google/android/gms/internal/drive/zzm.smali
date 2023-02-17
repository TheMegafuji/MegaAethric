.class public final Lcom/google/android/gms/internal/drive/zzm;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/drive/zzm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzan:Ljava/lang/String;

.field private final zzao:Z

.field private final zzat:Z

.field private final zzdd:Lcom/google/android/gms/drive/DriveId;

.field private final zzde:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field private final zzdf:Lcom/google/android/gms/drive/Contents;

.field private final zzdg:I

.field private final zzdh:I

.field private final zzdi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/drive/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IZLcom/google/android/gms/drive/zzn;)V
    .locals 10

    .line 26
    invoke-virtual {p5}, Lcom/google/android/gms/drive/ExecutionOptions;->zzm()Z

    move-result v4

    .line 27
    invoke-virtual {p5}, Lcom/google/android/gms/drive/ExecutionOptions;->zzl()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-virtual {p5}, Lcom/google/android/gms/drive/ExecutionOptions;->zzn()I

    move-result v6

    .line 29
    invoke-virtual {p5}, Lcom/google/android/gms/drive/zzn;->zzp()Z

    move-result v9

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, p3

    move v8, p4

    .line 30
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/drive/zzm;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;ZLjava/lang/String;IIZZ)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;ZLjava/lang/String;IIZZ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzm;->zzdd:Lcom/google/android/gms/drive/DriveId;

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzm;->zzde:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    .line 17
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzm;->zzdf:Lcom/google/android/gms/drive/Contents;

    .line 18
    iput-boolean p4, p0, Lcom/google/android/gms/internal/drive/zzm;->zzao:Z

    .line 19
    iput-object p5, p0, Lcom/google/android/gms/internal/drive/zzm;->zzan:Ljava/lang/String;

    .line 20
    iput p6, p0, Lcom/google/android/gms/internal/drive/zzm;->zzdg:I

    .line 21
    iput p7, p0, Lcom/google/android/gms/internal/drive/zzm;->zzdh:I

    .line 22
    iput-boolean p8, p0, Lcom/google/android/gms/internal/drive/zzm;->zzdi:Z

    .line 23
    iput-boolean p9, p0, Lcom/google/android/gms/internal/drive/zzm;->zzat:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzm;->zzdd:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzm;->zzde:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzm;->zzdf:Lcom/google/android/gms/drive/Contents;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 6
    iget-boolean p2, p0, Lcom/google/android/gms/internal/drive/zzm;->zzao:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzm;->zzan:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 8
    iget p2, p0, Lcom/google/android/gms/internal/drive/zzm;->zzdg:I

    const/4 v1, 0x7

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 9
    iget p2, p0, Lcom/google/android/gms/internal/drive/zzm;->zzdh:I

    const/16 v1, 0x8

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 10
    iget-boolean p2, p0, Lcom/google/android/gms/internal/drive/zzm;->zzdi:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 11
    iget-boolean p2, p0, Lcom/google/android/gms/internal/drive/zzm;->zzat:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 12
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
