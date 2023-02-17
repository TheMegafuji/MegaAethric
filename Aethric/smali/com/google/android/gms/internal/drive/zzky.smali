.class public final Lcom/google/android/gms/internal/drive/zzky;
.super Lcom/google/android/gms/internal/drive/zziw;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzkz;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zziw<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzkz;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zztk:Lcom/google/android/gms/internal/drive/zzky;

.field private static final zztl:Lcom/google/android/gms/internal/drive/zzkz;


# instance fields
.field private final zziu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/google/android/gms/internal/drive/zzky;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzky;-><init>()V

    .line 75
    sput-object v0, Lcom/google/android/gms/internal/drive/zzky;->zztk:Lcom/google/android/gms/internal/drive/zzky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zziw;->zzbp()V

    .line 76
    sget-object v0, Lcom/google/android/gms/internal/drive/zzky;->zztk:Lcom/google/android/gms/internal/drive/zzky;

    sput-object v0, Lcom/google/android/gms/internal/drive/zzky;->zztl:Lcom/google/android/gms/internal/drive/zzkz;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzky;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzky;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zziw;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzky;->zziu:Ljava/util/List;

    return-void
.end method

.method private static zzf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 20
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 21
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 22
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v0, :cond_1

    .line 23
    check-cast p0, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->zzbt()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzkm;->zze([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 1

    .line 44
    check-cast p2, Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->zziu:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 47
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzky;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzky;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    .line 11
    instance-of v0, p2, Lcom/google/android/gms/internal/drive/zzkz;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/drive/zzkz;

    invoke-interface {p2}, Lcom/google/android/gms/internal/drive/zzkz;->zzdr()Ljava/util/List;

    move-result-object p2

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->zziu:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 13
    iget p2, p0, Lcom/google/android/gms/internal/drive/zzky;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/android/gms/internal/drive/zzky;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzky;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/drive/zziw;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->zziu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzky;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzky;->modCount:I

    return-void
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/drive/zziw;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->zziu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 60
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 62
    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v1, :cond_2

    .line 63
    check-cast v0, Lcom/google/android/gms/internal/drive/zzjc;

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzjc;->zzbt()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzjc;->zzbu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->zziu:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    .line 68
    :cond_2
    check-cast v0, [B

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzkm;->zze([B)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzkm;->zzd([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->zziu:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/google/android/gms/internal/drive/zziw;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->zziu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzky;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzky;->modCount:I

    .line 41
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzky;->zzf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/drive/zziw;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/drive/zziw;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/drive/zziw;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 29
    check-cast p2, Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->zziu:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzky;->zzf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->zziu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzao(I)Ljava/lang/Object;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->zziu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzbo()Z
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbo()Z

    move-result v0

    return v0
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

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->zziu:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzds()Lcom/google/android/gms/internal/drive/zzkz;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/drive/zzna;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzna;-><init>(Lcom/google/android/gms/internal/drive/zzkz;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final synthetic zzr(I)Lcom/google/android/gms/internal/drive/zzkp;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzky;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzky;->zziu:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 56
    new-instance p1, Lcom/google/android/gms/internal/drive/zzky;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/drive/zzky;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
