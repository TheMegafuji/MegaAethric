.class public final Lcom/google/android/gms/drive/MetadataBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/MetadataBuffer$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/AbstractDataBuffer<",
        "Lcom/google/android/gms/drive/Metadata;",
        ">;"
    }
.end annotation


# instance fields
.field private zzau:Lcom/google/android/gms/drive/MetadataBuffer$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/google/android/gms/drive/MetadataBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public final get(I)Lcom/google/android/gms/drive/Metadata;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer;->zzau:Lcom/google/android/gms/drive/MetadataBuffer$zza;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zza(Lcom/google/android/gms/drive/MetadataBuffer$zza;)I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/drive/MetadataBuffer$zza;

    iget-object v1, p0, Lcom/google/android/gms/drive/MetadataBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/drive/MetadataBuffer$zza;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer;->zzau:Lcom/google/android/gms/drive/MetadataBuffer$zza;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/MetadataBuffer;->get(I)Lcom/google/android/gms/drive/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public final getNextPageToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final release()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zza(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 12
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    return-void
.end method
