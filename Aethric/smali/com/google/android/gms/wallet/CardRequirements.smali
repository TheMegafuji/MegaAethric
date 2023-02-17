.class public final Lcom/google/android/gms/wallet/CardRequirements;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/CardRequirements$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wallet/CardRequirements;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zza:Ljava/util/ArrayList;

.field zzb:Z

.field zzc:Z

.field zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/CardRequirements;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/CardRequirements;->zzb:Z

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;ZZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/CardRequirements;->zza:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lcom/google/android/gms/wallet/CardRequirements;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/wallet/CardRequirements;->zzc:Z

    iput p4, p0, Lcom/google/android/gms/wallet/CardRequirements;->zzd:I

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/CardRequirements$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/wallet/CardRequirements$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/CardRequirements;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/CardRequirements;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/CardRequirements$Builder;-><init>(Lcom/google/android/gms/wallet/CardRequirements;Lcom/google/android/gms/wallet/zzf;)V

    return-object v0
.end method


# virtual methods
.method public allowPrepaidCards()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/CardRequirements;->zzb:Z

    return v0
.end method

.method public getAllowedCardNetworks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements;->zza:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBillingAddressFormat()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/CardRequirements;->zzd:I

    return v0
.end method

.method public isBillingAddressRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/CardRequirements;->zzc:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements;->zza:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntegerList(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/CardRequirements;->zzb:Z

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/CardRequirements;->zzc:Z

    const/4 v1, 0x3

    .line 4
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget v0, p0, Lcom/google/android/gms/wallet/CardRequirements;->zzd:I

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
