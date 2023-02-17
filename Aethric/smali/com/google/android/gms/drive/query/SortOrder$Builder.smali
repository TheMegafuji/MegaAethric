.class public Lcom/google/android/gms/drive/query/SortOrder$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/query/SortOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zzlw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/drive/query/internal/zzf;",
            ">;"
        }
    .end annotation
.end field

.field private zzlx:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/query/SortOrder$Builder;->zzlw:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/drive/query/SortOrder$Builder;->zzlx:Z

    return-void
.end method


# virtual methods
.method public addSortAscending(Lcom/google/android/gms/drive/metadata/SortableMetadataField;)Lcom/google/android/gms/drive/query/SortOrder$Builder;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/drive/query/SortOrder$Builder;->zzlw:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/drive/query/internal/zzf;

    invoke-interface {p1}, Lcom/google/android/gms/drive/metadata/SortableMetadataField;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/query/internal/zzf;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSortDescending(Lcom/google/android/gms/drive/metadata/SortableMetadataField;)Lcom/google/android/gms/drive/query/SortOrder$Builder;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/drive/query/SortOrder$Builder;->zzlw:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/drive/query/internal/zzf;

    invoke-interface {p1}, Lcom/google/android/gms/drive/metadata/SortableMetadataField;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/query/internal/zzf;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/drive/query/SortOrder;
    .locals 3

    .line 9
    new-instance v0, Lcom/google/android/gms/drive/query/SortOrder;

    iget-object v1, p0, Lcom/google/android/gms/drive/query/SortOrder$Builder;->zzlw:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/query/SortOrder;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method
