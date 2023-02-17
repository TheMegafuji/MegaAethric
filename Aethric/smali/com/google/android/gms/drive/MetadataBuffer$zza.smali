.class final Lcom/google/android/gms/drive/MetadataBuffer$zza;
.super Lcom/google/android/gms/drive/Metadata;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/MetadataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final row:I

.field private final zzav:Lcom/google/android/gms/common/data/DataHolder;

.field private final zzaw:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/drive/Metadata;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzav:Lcom/google/android/gms/common/data/DataHolder;

    .line 3
    iput p2, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->row:I

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzaw:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/drive/MetadataBuffer$zza;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->row:I

    return p0
.end method


# virtual methods
.method public final synthetic freeze()Ljava/lang/Object;
    .locals 6

    .line 9
    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzbe()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzbc()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/drive/metadata/MetadataField;

    .line 11
    sget-object v3, Lcom/google/android/gms/internal/drive/zzhs;->zzkq:Lcom/google/android/gms/drive/metadata/MetadataField;

    if-eq v2, v3, :cond_0

    .line 12
    iget-object v3, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzav:Lcom/google/android/gms/common/data/DataHolder;

    iget v4, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->row:I

    iget v5, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzaw:I

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/google/android/gms/drive/metadata/MetadataField;->zza(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;II)V

    goto :goto_0

    .line 14
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/drive/zzaa;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/drive/zzaa;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    return-object v1
.end method

.method public final isDataValid()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzav:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzav:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->row:I

    iget v2, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzaw:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/drive/metadata/MetadataField;->zza(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
