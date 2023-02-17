.class public final Lcom/google/android/gms/drive/query/internal/zzd;
.super Lcom/google/android/gms/drive/query/internal/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/query/internal/zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzma:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field private final zzmb:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zze;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/query/internal/zzd;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/drive/query/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzd;->zzma:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/drive/query/internal/zzi;->zza(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/MetadataField;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzd;->zzmb:Lcom/google/android/gms/drive/metadata/MetadataField;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzd;->zzma:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/drive/query/internal/zzj;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/query/internal/zzj<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzd;->zzmb:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-interface {p1, v0}, Lcom/google/android/gms/drive/query/internal/zzj;->zze(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
