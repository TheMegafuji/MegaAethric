.class public final Lcom/google/android/gms/drive/query/internal/zzb;
.super Lcom/google/android/gms/drive/query/internal/zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/drive/query/internal/zza;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/drive/query/internal/zzc;


# instance fields
.field private final zzlz:Lcom/google/android/gms/drive/query/internal/zzx;

.field private final zzma:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field private final zzmb:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzb;->CREATOR:Lcom/google/android/gms/drive/query/internal/zzc;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/query/internal/zzx;",
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 6
    invoke-static {p2, p3}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/zzb;-><init>(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/drive/query/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzb;->zzlz:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/zzb;->zzma:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/drive/query/internal/zzi;->zza(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/MetadataField;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzb;->zzmb:Lcom/google/android/gms/drive/metadata/MetadataField;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzb;->zzlz:Lcom/google/android/gms/drive/query/internal/zzx;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzb;->zzma:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/drive/query/internal/zzj;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/query/internal/zzj<",
            "TF;>;)TF;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzb;->zzlz:Lcom/google/android/gms/drive/query/internal/zzx;

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzb;->zzmb:Lcom/google/android/gms/drive/metadata/MetadataField;

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/zzb;->zzma:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/drive/query/internal/zzj;->zza(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
