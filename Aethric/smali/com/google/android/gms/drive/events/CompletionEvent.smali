.class public final Lcom/google/android/gms/drive/events/CompletionEvent;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/drive/events/ResourceEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/events/CompletionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_CANCELED:I = 0x3

.field public static final STATUS_CONFLICT:I = 0x2

.field public static final STATUS_FAILURE:I = 0x1

.field public static final STATUS_SUCCESS:I

.field private static final zzbz:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final status:I

.field private final zzca:Ljava/lang/String;

.field private final zzcb:Landroid/os/ParcelFileDescriptor;

.field private final zzcc:Landroid/os/ParcelFileDescriptor;

.field private final zzcd:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field private final zzce:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcf:Landroid/os/IBinder;

.field private zzcg:Z

.field private zzch:Z

.field private zzci:Z

.field private final zzk:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "CompletionEvent"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 80
    new-instance v0, Lcom/google/android/gms/drive/events/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/CompletionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/DriveId;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Ljava/util/List;ILandroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            "Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcg:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzch:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzci:Z

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzk:Lcom/google/android/gms/drive/DriveId;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzca:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcb:Landroid/os/ParcelFileDescriptor;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcc:Landroid/os/ParcelFileDescriptor;

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcd:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    .line 10
    iput-object p6, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzce:Ljava/util/List;

    .line 11
    iput p7, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->status:I

    .line 12
    iput-object p8, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcf:Landroid/os/IBinder;

    return-void
.end method

.method private final zza(Z)V
    .locals 6

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzv()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzci:Z

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcb:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Landroid/os/ParcelFileDescriptor;)V

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcc:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Landroid/os/ParcelFileDescriptor;)V

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcd:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/drive/zzhs;->zzkq:Lcom/google/android/gms/drive/metadata/MetadataField;

    .line 60
    invoke-virtual {v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzd(Lcom/google/android/gms/drive/metadata/MetadataField;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcd:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v2, Lcom/google/android/gms/internal/drive/zzhs;->zzkq:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/BitmapTeleporter;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/BitmapTeleporter;->release()V

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcf:Landroid/os/IBinder;

    const/4 v2, 0x0

    const-string v3, "CompletionEvent"

    const-string v4, "snooze"

    const-string v5, "dismiss"

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 64
    :goto_0
    sget-object p1, Lcom/google/android/gms/drive/events/CompletionEvent;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v2

    const-string v1, "No callback on %s"

    invoke-virtual {p1, v3, v1, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->efmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_2
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzev;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/drive/zzeu;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/drive/zzeu;->zza(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v5

    .line 70
    :goto_1
    sget-object p1, Lcom/google/android/gms/drive/events/CompletionEvent;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v2

    const-string v2, "RemoteException on %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzv()V
    .locals 2

    .line 72
    iget-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzci:Z

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Event has already been dismissed or snoozed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zza(Z)V

    return-void
.end method

.method public final getAccountName()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzv()V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzca:Ljava/lang/String;

    return-object v0
.end method

.method public final getBaseContentsInputStream()Ljava/io/InputStream;
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzv()V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcb:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcg:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcg:Z

    .line 37
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcb:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getBaseInputStream() can only be called once per CompletionEvent instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzv()V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzk:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public final getModifiedContentsInputStream()Ljava/io/InputStream;
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzv()V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcc:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzch:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzch:Z

    .line 44
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcc:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getModifiedInputStream() can only be called once per CompletionEvent instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getModifiedMetadataChangeSet()Lcom/google/android/gms/drive/MetadataChangeSet;
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzv()V

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcd:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcd:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/MetadataChangeSet;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzv()V

    .line 50
    iget v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->status:I

    return v0
.end method

.method public final getTrackingTags()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzv()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzce:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final snooze()V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zza(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzce:Ljava/util/List;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    const-string v0, "<null>"

    goto :goto_0

    :cond_0
    const-string v2, "\',\'"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "\'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzk:Lcom/google/android/gms/drive/DriveId;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->status:I

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v0, v3, v1

    const-string v0, "CompletionEvent [id=%s, status=%s, trackingTag=%s]"

    .line 78
    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    or-int/lit8 p2, p2, 0x1

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzk:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzca:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcb:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcc:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcd:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 21
    iget-object p2, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzce:Ljava/util/List;

    const/4 v1, 0x7

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 22
    iget p2, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->status:I

    const/16 v1, 0x8

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 23
    iget-object p2, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcf:Landroid/os/IBinder;

    const/16 v1, 0x9

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
