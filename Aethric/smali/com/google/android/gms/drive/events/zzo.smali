.class public final Lcom/google/android/gms/drive/events/zzo;
.super Lcom/google/android/gms/drive/zzu;

# interfaces
.implements Lcom/google/android/gms/drive/events/DriveEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/events/zzo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzav:Lcom/google/android/gms/common/data/DataHolder;

.field private final zzcq:Z

.field private final zzcr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/google/android/gms/drive/events/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/zzo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/drive/zzu;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/drive/events/zzo;->zzav:Lcom/google/android/gms/common/data/DataHolder;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/drive/events/zzo;->zzcq:Z

    .line 4
    iput p3, p0, Lcom/google/android/gms/drive/events/zzo;->zzcr:I

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final zza(Landroid/os/Parcel;I)V
    .locals 4

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/drive/events/zzo;->zzav:Lcom/google/android/gms/common/data/DataHolder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 9
    iget-boolean p2, p0, Lcom/google/android/gms/drive/events/zzo;->zzcq:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 10
    iget p2, p0, Lcom/google/android/gms/drive/events/zzo;->zzcr:I

    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzaa()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/drive/events/zzo;->zzcq:Z

    return v0
.end method

.method public final zzab()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/android/gms/drive/events/zzo;->zzcr:I

    return v0
.end method

.method public final zzz()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/drive/events/zzo;->zzav:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method
