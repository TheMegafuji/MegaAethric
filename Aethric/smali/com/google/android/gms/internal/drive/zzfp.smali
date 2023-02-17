.class public final Lcom/google/android/gms/internal/drive/zzfp;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/drive/zzfp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzda:I

.field private final zzib:Lcom/google/android/gms/drive/events/ChangeEvent;

.field private final zzic:Lcom/google/android/gms/drive/events/CompletionEvent;

.field private final zzid:Lcom/google/android/gms/drive/events/zzo;

.field private final zzie:Lcom/google/android/gms/drive/events/zzb;

.field private final zzif:Lcom/google/android/gms/drive/events/zzv;

.field private final zzig:Lcom/google/android/gms/drive/events/zzr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/drive/zzfq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzfq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzfp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/events/ChangeEvent;Lcom/google/android/gms/drive/events/CompletionEvent;Lcom/google/android/gms/drive/events/zzo;Lcom/google/android/gms/drive/events/zzb;Lcom/google/android/gms/drive/events/zzv;Lcom/google/android/gms/drive/events/zzr;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 13
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzda:I

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzib:Lcom/google/android/gms/drive/events/ChangeEvent;

    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzic:Lcom/google/android/gms/drive/events/CompletionEvent;

    .line 16
    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzid:Lcom/google/android/gms/drive/events/zzo;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzie:Lcom/google/android/gms/drive/events/zzb;

    .line 18
    iput-object p6, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzif:Lcom/google/android/gms/drive/events/zzv;

    .line 19
    iput-object p7, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzig:Lcom/google/android/gms/drive/events/zzr;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzda:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzib:Lcom/google/android/gms/drive/events/ChangeEvent;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzic:Lcom/google/android/gms/drive/events/CompletionEvent;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzid:Lcom/google/android/gms/drive/events/zzo;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzie:Lcom/google/android/gms/drive/events/zzb;

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzif:Lcom/google/android/gms/drive/events/zzv;

    const/16 v2, 0x9

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzig:Lcom/google/android/gms/drive/events/zzr;

    const/16 v2, 0xa

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzat()Lcom/google/android/gms/drive/events/DriveEvent;
    .locals 4

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzda:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzig:Lcom/google/android/gms/drive/events/zzr;

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzda:I

    const/16 v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected event type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzif:Lcom/google/android/gms/drive/events/zzv;

    return-object v0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzie:Lcom/google/android/gms/drive/events/zzb;

    return-object v0

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzid:Lcom/google/android/gms/drive/events/zzo;

    return-object v0

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzic:Lcom/google/android/gms/drive/events/CompletionEvent;

    return-object v0

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfp;->zzib:Lcom/google/android/gms/drive/events/ChangeEvent;

    return-object v0
.end method
