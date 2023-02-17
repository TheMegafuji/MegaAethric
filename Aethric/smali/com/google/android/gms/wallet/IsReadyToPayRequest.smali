.class public final Lcom/google/android/gms/wallet/IsReadyToPayRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wallet/IsReadyToPayRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zza:Ljava/util/ArrayList;

.field zzb:Ljava/lang/String;

.field zzc:Ljava/lang/String;

.field zzd:Ljava/util/ArrayList;

.field zze:Z

.field zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zza:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzd:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zze:Z

    iput-object p6, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/IsReadyToPayRequest;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->newBuilder()Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;

    move-result-object v0

    const-string v1, "isReadyToPayRequestJson cannot be null!"

    .line 2
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zza:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    iput-object p0, v1, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzf:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->build()Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/IsReadyToPayRequest;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;-><init>(Lcom/google/android/gms/wallet/IsReadyToPayRequest;Lcom/google/android/gms/wallet/zzp;)V

    return-object v0
.end method


# virtual methods
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zza:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllowedPaymentMethods()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzd:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isExistingPaymentMethodRequired()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zze:Z

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zza:Ljava/util/ArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntegerList(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzb:Ljava/lang/String;

    const/4 v1, 0x4

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzc:Ljava/lang/String;

    const/4 v1, 0x5

    .line 4
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzd:Ljava/util/ArrayList;

    const/4 v1, 0x6

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntegerList(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zze:Z

    const/4 v1, 0x7

    .line 6
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzf:Ljava/lang/String;

    const/16 v1, 0x8

    .line 7
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
