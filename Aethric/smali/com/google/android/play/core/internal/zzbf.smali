.class final Lcom/google/android/play/core/internal/zzbf;
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

.method static zzc(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Object;

    const-string v1, "pathList"

    invoke-static {p0, v1, v0}, Lcom/google/android/play/core/internal/zzbw;->zzb(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/play/core/internal/zzbv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/play/core/internal/zzbv;->zzc()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static zzd(Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 5

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

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Adding native library parent directory: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 6
    :cond_1
    new-instance v2, Ljava/lang/String;

    .line 4
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v3, "Splitcompat"

    .line 5
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p0}, Lcom/google/android/play/core/internal/zzbf;->zzc(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "nativeLibraryDirectories"

    const-class v1, Ljava/io/File;

    .line 8
    invoke-static {p0, p1, v1}, Lcom/google/android/play/core/internal/zzbw;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/play/core/internal/zzbu;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/zzbv;->zzc()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-class p1, Lcom/google/android/play/core/splitinstall/zzn;

    monitor-enter p1

    .line 10
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Adding directories "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Splitcompat"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/play/core/internal/zzbu;->zzb(Ljava/util/Collection;)V

    .line 12
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static zze(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;ZLcom/google/android/play/core/internal/zzbe;Ljava/lang/String;Lcom/google/android/play/core/internal/zzbd;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/google/android/play/core/internal/zzbf;->zzc(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    const-class v1, Ljava/lang/Object;

    const-string v2, "dexElements"

    .line 3
    invoke-static {p0, v2, v1}, Lcom/google/android/play/core/internal/zzbw;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/play/core/internal/zzbu;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/play/core/internal/zzbv;->zzc()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-class v5, Ljava/io/File;

    .line 7
    invoke-static {v4, p5, v5}, Lcom/google/android/play/core/internal/zzbw;->zzb(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/play/core/internal/zzbv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/play/core/internal/zzbv;->zzc()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 8
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    const/4 v2, 0x1

    if-eqz p5, :cond_1

    return v2

    :cond_1
    const-string p5, "SplitCompat"

    const/4 v3, 0x0

    if-nez p3, :cond_3

    .line 10
    invoke-interface {p6, p0, p2, p1}, Lcom/google/android/play/core/internal/zzbd;->zza(Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 21
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Should be optimized "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    .line 11
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-interface {p4, p0, p3, p1, v0}, Lcom/google/android/play/core/internal/zzbe;->zza(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/play/core/internal/zzbu;->zza(Ljava/util/Collection;)V

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Lcom/google/android/play/core/internal/zzbt;

    const-string p2, "DexPathList.makeDexElement failed"

    .line 15
    invoke-direct {p1, p2}, Lcom/google/android/play/core/internal/zzbt;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    :goto_2
    if-ge v3, p3, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    .line 16
    check-cast p4, Ljava/io/IOException;

    .line 17
    invoke-static {p5, p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const-class p2, Ljava/io/IOException;

    const-string p3, "dexElementsSuppressedExceptions"

    .line 18
    invoke-static {p0, p3, p2}, Lcom/google/android/play/core/internal/zzbw;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/play/core/internal/zzbu;

    move-result-object p0

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/play/core/internal/zzbu;->zza(Ljava/util/Collection;)V

    .line 20
    throw p1

    :cond_5
    return v2
.end method


# virtual methods
.method public final zza(Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/play/core/internal/zzbf;->zzd(Ljava/lang/ClassLoader;Ljava/util/Set;)V

    return-void
.end method

.method public final zzb(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z
    .locals 7

    .line 1
    new-instance v4, Lcom/google/android/play/core/internal/zzbb;

    invoke-direct {v4}, Lcom/google/android/play/core/internal/zzbb;-><init>()V

    new-instance v6, Lcom/google/android/play/core/internal/zzbc;

    invoke-direct {v6}, Lcom/google/android/play/core/internal/zzbc;-><init>()V

    const-string v5, "zip"

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/play/core/internal/zzbf;->zze(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;ZLcom/google/android/play/core/internal/zzbe;Ljava/lang/String;Lcom/google/android/play/core/internal/zzbd;)Z

    move-result p1

    return p1
.end method
