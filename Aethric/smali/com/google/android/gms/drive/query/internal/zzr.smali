.class public final Lcom/google/android/gms/drive/query/internal/zzr;
.super Lcom/google/android/gms/drive/query/internal/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/query/internal/zzr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/drive/query/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private final zzlz:Lcom/google/android/gms/drive/query/internal/zzx;

.field private final zzmo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/drive/query/internal/zza;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzlz:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p3

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzmo:Ljava/util/List;

    .line 17
    new-instance v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {v0, p2}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p3

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzls:Ljava/util/List;

    .line 19
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v0, p3, p2

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzmo:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {v2, v0}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/internal/zzx;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/query/internal/zzx;",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/drive/query/Filter;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/drive/query/internal/zza;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzlz:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzls:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzmo:Ljava/util/List;

    .line 9
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/drive/query/Filter;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzls:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzmo:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {v1, p2}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/query/internal/zzx;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/query/internal/zzx;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/drive/query/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzlz:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzmo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzlz:Lcom/google/android/gms/drive/query/internal/zzx;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzmo:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 34
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/drive/query/internal/zzj;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/query/internal/zzj<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzmo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/drive/query/internal/FilterHolder;->getFilter()Lcom/google/android/gms/drive/query/Filter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/android/gms/drive/query/Filter;->zza(Lcom/google/android/gms/drive/query/internal/zzj;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzlz:Lcom/google/android/gms/drive/query/internal/zzx;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/drive/query/internal/zzj;->zza(Lcom/google/android/gms/drive/query/internal/zzx;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
