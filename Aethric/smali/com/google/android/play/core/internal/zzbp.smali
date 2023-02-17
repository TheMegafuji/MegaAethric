.class final Lcom/google/android/play/core/internal/zzbp;
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

.method static zzc(Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzbn;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/zzbn;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/android/play/core/internal/zzbk;->zzc(Ljava/lang/ClassLoader;Ljava/util/Set;Lcom/google/android/play/core/internal/zzbj;)V

    return-void
.end method

.method static zzd(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z
    .locals 7

    .line 1
    new-instance v4, Lcom/google/android/play/core/internal/zzbh;

    invoke-direct {v4}, Lcom/google/android/play/core/internal/zzbh;-><init>()V

    new-instance v6, Lcom/google/android/play/core/internal/zzbo;

    invoke-direct {v6}, Lcom/google/android/play/core/internal/zzbo;-><init>()V

    const-string v5, "path"

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
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/play/core/internal/zzbp;->zzc(Ljava/lang/ClassLoader;Ljava/util/Set;)V

    return-void
.end method

.method public final zzb(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/play/core/internal/zzbp;->zzd(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z

    move-result p1

    return p1
.end method
