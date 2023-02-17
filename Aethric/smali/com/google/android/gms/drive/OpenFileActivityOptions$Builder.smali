.class public Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/OpenFileActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zzbf:Lcom/google/android/gms/drive/OpenFileActivityBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;->zzbf:Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/drive/OpenFileActivityOptions;
    .locals 7

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;->zzbf:Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzg()V

    .line 13
    new-instance v0, Lcom/google/android/gms/drive/OpenFileActivityOptions;

    iget-object v1, p0, Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;->zzbf:Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;->zzbf:Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzs()[Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;->zzbf:Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzt()Lcom/google/android/gms/drive/query/Filter;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;->zzbf:Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzu()Lcom/google/android/gms/drive/DriveId;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/drive/OpenFileActivityOptions;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/query/Filter;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/zzq;)V

    return-object v0
.end method

.method public setActivityStartFolder(Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;->zzbf:Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->setActivityStartFolder(Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    return-object p0
.end method

.method public setActivityTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;->zzbf:Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->setActivityTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    return-object p0
.end method

.method public setMimeType(Ljava/util/List;)Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;->zzbf:Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->setMimeType([Ljava/lang/String;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    return-object p0
.end method

.method public setSelectionFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityOptions$Builder;->zzbf:Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->setSelectionFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    return-object p0
.end method
