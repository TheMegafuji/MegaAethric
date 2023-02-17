.class final Lcom/google/android/play/core/splitcompat/zzi;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitcompat/zzk;


# instance fields
.field final synthetic zza:Ljava/util/Set;

.field final synthetic zzb:Lcom/google/android/play/core/splitcompat/zzs;

.field final synthetic zzc:Ljava/util/zip/ZipFile;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitcompat/zzm;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/zzs;Ljava/util/zip/ZipFile;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/play/core/splitcompat/zzi;->zza:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/play/core/splitcompat/zzi;->zzb:Lcom/google/android/play/core/splitcompat/zzs;

    iput-object p4, p0, Lcom/google/android/play/core/splitcompat/zzi;->zzc:Ljava/util/zip/ZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/play/core/splitcompat/zzl;Ljava/io/File;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/zzi;->zza:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_3

    const/4 p3, 0x5

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/zzi;->zzb:Lcom/google/android/play/core/splitcompat/zzs;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/play/core/splitcompat/zzs;->zzb()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const/4 v0, 0x1

    iget-object v2, p1, Lcom/google/android/play/core/splitcompat/zzl;->zza:Ljava/lang/String;

    aput-object v2, p3, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/play/core/splitcompat/zzi;->zzb:Lcom/google/android/play/core/splitcompat/zzs;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/play/core/splitcompat/zzs;->zza()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    const/4 v0, 0x3

    iget-object v2, p1, Lcom/google/android/play/core/splitcompat/zzl;->zzb:Ljava/util/zip/ZipEntry;

    .line 4
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    const-string v0, "NativeLibraryExtractor: split \'%s\' has native library \'%s\' that does not exist; extracting from \'%s!%s\' to \'%s\'"

    .line 6
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "SplitCompat"

    .line 7
    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/google/android/play/core/splitcompat/zzi;->zzc:Ljava/util/zip/ZipFile;

    .line 8
    iget-object p1, p1, Lcom/google/android/play/core/splitcompat/zzl;->zzb:Ljava/util/zip/ZipEntry;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 11
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    new-instance p3, Ljava/io/FileOutputStream;

    .line 12
    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    invoke-static {p2}, Lcom/google/android/play/core/splitcompat/zze;->zzm(Ljava/io/File;)V

    .line 14
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    if-lez p2, :cond_1

    .line 15
    invoke-virtual {p3, v0, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    :cond_1
    :try_start_2
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p2

    .line 11
    :try_start_3
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    :cond_2
    throw p2

    :cond_3
    return-void
.end method
