.class final Lcom/google/android/play/core/internal/zzbk;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/zzaz;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc(Ljava/lang/ClassLoader;Ljava/util/Set;Lcom/google/android/play/core/internal/zzbj;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/google/android/play/core/internal/zzbf;->zzc(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "nativeLibraryDirectories"

    const-class v1, Ljava/util/List;

    .line 6
    invoke-static {p0, p1, v1}, Lcom/google/android/play/core/internal/zzbw;->zzb(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/play/core/internal/zzbv;

    move-result-object p1

    const-class v1, Lcom/google/android/play/core/splitinstall/zzn;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/play/core/internal/zzbv;->zzc()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 9
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-virtual {p1, v2}, Lcom/google/android/play/core/internal/zzbv;->zze(Ljava/lang/Object;)V

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance p1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 14
    invoke-interface {p2, p0, v1, v0, p1}, Lcom/google/android/play/core/internal/zzbj;->zza(Ljava/lang/Object;Ljava/util/List;Ljava/io/File;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p2

    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p0, Lcom/google/android/play/core/internal/zzbt;

    const-string p2, "Error in makePathElements"

    .line 16
    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzbt;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 17
    check-cast v1, Ljava/io/IOException;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18
    :cond_2
    throw p0

    .line 17
    :cond_3
    const-class p1, Lcom/google/android/play/core/splitinstall/zzn;

    monitor-enter p1

    :try_start_1
    const-string v0, "nativeLibraryPathElements"

    const-class v1, Ljava/lang/Object;

    .line 19
    invoke-static {p0, v0, v1}, Lcom/google/android/play/core/internal/zzbw;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/play/core/internal/zzbu;

    move-result-object p0

    .line 20
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/play/core/internal/zzbu;->zzb(Ljava/util/Collection;)V

    .line 21
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 11
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static zzd(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;ZLjava/lang/String;)Z
    .locals 7

    .line 1
    new-instance v4, Lcom/google/android/play/core/internal/zzbh;

    invoke-direct {v4}, Lcom/google/android/play/core/internal/zzbh;-><init>()V

    new-instance v6, Lcom/google/android/play/core/internal/zzbc;

    invoke-direct {v6}, Lcom/google/android/play/core/internal/zzbc;-><init>()V

    const-string v5, "zip"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/play/core/internal/zzbf;->zze(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;ZLcom/google/android/play/core/internal/zzbe;Ljava/lang/String;Lcom/google/android/play/core/internal/zzbd;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzbi;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/zzbi;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/google/android/play/core/internal/zzbk;->zzc(Ljava/lang/ClassLoader;Ljava/util/Set;Lcom/google/android/play/core/internal/zzbj;)V

    return-void
.end method

.method public final zzb(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z
    .locals 1

    const-string v0, "zip"

    .line 1
    invoke-static {p1, p2, p3, p4, v0}, Lcom/google/android/play/core/internal/zzbk;->zzd(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method
