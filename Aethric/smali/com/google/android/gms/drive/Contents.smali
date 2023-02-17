.class public Lcom/google/android/gms/drive/Contents;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/Contents;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mode:I

.field private final zzi:Landroid/os/ParcelFileDescriptor;

.field final zzj:I

.field private final zzk:Lcom/google/android/gms/drive/DriveId;

.field private final zzl:Z

.field private final zzm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/google/android/gms/drive/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;IILcom/google/android/gms/drive/DriveId;ZLjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/drive/Contents;->zzi:Landroid/os/ParcelFileDescriptor;

    .line 13
    iput p2, p0, Lcom/google/android/gms/drive/Contents;->zzj:I

    .line 14
    iput p3, p0, Lcom/google/android/gms/drive/Contents;->mode:I

    .line 15
    iput-object p4, p0, Lcom/google/android/gms/drive/Contents;->zzk:Lcom/google/android/gms/drive/DriveId;

    .line 16
    iput-boolean p5, p0, Lcom/google/android/gms/drive/Contents;->zzl:Z

    .line 17
    iput-object p6, p0, Lcom/google/android/gms/drive/Contents;->zzm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/drive/Contents;->zzk:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 21
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/gms/drive/Contents;->zzi:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/google/android/gms/drive/Contents;->mode:I

    return v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 22
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/gms/drive/Contents;->zzi:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/drive/Contents;->zzi:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public final getRequestId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/android/gms/drive/Contents;->zzj:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/drive/Contents;->zzi:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    iget v1, p0, Lcom/google/android/gms/drive/Contents;->zzj:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 5
    iget v1, p0, Lcom/google/android/gms/drive/Contents;->mode:I

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/drive/Contents;->zzk:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 7
    iget-boolean p2, p0, Lcom/google/android/gms/drive/Contents;->zzl:Z

    const/4 v1, 0x7

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/drive/Contents;->zzm:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzb()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->zzl:Z

    return v0
.end method
