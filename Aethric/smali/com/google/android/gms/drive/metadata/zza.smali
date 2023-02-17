.class public abstract Lcom/google/android/gms/drive/metadata/zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/metadata/MetadataField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/drive/metadata/MetadataField<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final fieldName:Ljava/lang/String;

.field private final zziw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzix:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zziy:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fieldName"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/drive/metadata/zza;->fieldName:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/drive/metadata/zza;->zziw:Ljava/util/Set;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/drive/metadata/zza;->zzix:Ljava/util/Set;

    .line 5
    iput p2, p0, Lcom/google/android/gms/drive/metadata/zza;->zziy:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fieldName"

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/drive/metadata/zza;->fieldName:Ljava/lang/String;

    .line 9
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/drive/metadata/zza;->zziw:Ljava/util/Set;

    .line 10
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/drive/metadata/zza;->zzix:Ljava/util/Set;

    .line 11
    iput p4, p0, Lcom/google/android/gms/drive/metadata/zza;->zziy:I

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/zza;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/zza;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    const-string v0, "bundle"

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/zza;->fieldName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/zza;->zzb(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "II)TT;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/zza;->zzb(Lcom/google/android/gms/common/data/DataHolder;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/zza;->zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract zza(Landroid/os/Bundle;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final zza(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;II)V
    .locals 1

    const-string v0, "dataHolder"

    .line 27
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bundle"

    .line 28
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/drive/metadata/zza;->zzb(Lcom/google/android/gms/common/data/DataHolder;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/drive/metadata/zza;->zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string v0, "bundle"

    .line 20
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/drive/metadata/zza;->fieldName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/drive/metadata/zza;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzaz()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/zza;->zziw:Ljava/util/Set;

    return-object v0
.end method

.method protected abstract zzb(Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method protected zzb(Lcom/google/android/gms/common/data/DataHolder;II)Z
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/zza;->zziw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/data/DataHolder;->hasColumn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {p1, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected abstract zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "II)TT;"
        }
    .end annotation
.end method
