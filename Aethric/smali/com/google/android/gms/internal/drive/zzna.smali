.class public final Lcom/google/android/gms/internal/drive/zzna;
.super Ljava/util/AbstractList;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzkz;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzkz;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final zzvt:Lcom/google/android/gms/internal/drive/zzkz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzkz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzna;->zzvt:Lcom/google/android/gms/internal/drive/zzkz;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/drive/zzna;)Lcom/google/android/gms/internal/drive/zzkz;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/android/gms/internal/drive/zzna;->zzvt:Lcom/google/android/gms/internal/drive/zzkz;

    return-object p0
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzna;->zzvt:Lcom/google/android/gms/internal/drive/zzkz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/drive/zzkz;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/drive/zznc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zznc;-><init>(Lcom/google/android/gms/internal/drive/zzna;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/drive/zznb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zznb;-><init>(Lcom/google/android/gms/internal/drive/zzna;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzna;->zzvt:Lcom/google/android/gms/internal/drive/zzkz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkz;->size()I

    move-result v0

    return v0
.end method

.method public final zzao(I)Ljava/lang/Object;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzna;->zzvt:Lcom/google/android/gms/internal/drive/zzkz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/drive/zzkz;->zzao(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzdr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzna;->zzvt:Lcom/google/android/gms/internal/drive/zzkz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkz;->zzdr()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzds()Lcom/google/android/gms/internal/drive/zzkz;
    .locals 0

    return-object p0
.end method
