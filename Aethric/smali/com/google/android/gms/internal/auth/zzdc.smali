.class public abstract Lcom/google/android/gms/internal/auth/zzdc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"


# static fields
.field private static final zza:Ljava/lang/Object;

.field public static final synthetic zzd:I

.field private static volatile zze:Lcom/google/android/gms/internal/auth/zzda;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile zzf:Z

.field private static final zzg:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final zzh:Lcom/google/android/gms/internal/auth/zzde;

.field private static final zzi:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final zzb:Lcom/google/android/gms/internal/auth/zzcz;

.field final zzc:Ljava/lang/String;

.field private final zzj:Ljava/lang/Object;

.field private volatile zzk:I

.field private volatile zzl:Ljava/lang/Object;

.field private final zzm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzdc;->zza:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/auth/zzdc;->zze:Lcom/google/android/gms/internal/auth/zzda;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/google/android/gms/internal/auth/zzdc;->zzf:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/auth/zzdc;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/auth/zzde;

    sget-object v2, Lcom/google/android/gms/internal/auth/zzcu;->zza:Lcom/google/android/gms/internal/auth/zzcu;

    .line 2
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/auth/zzde;-><init>(Lcom/google/android/gms/internal/auth/zzcu;[B)V

    sput-object v1, Lcom/google/android/gms/internal/auth/zzdc;->zzh:Lcom/google/android/gms/internal/auth/zzde;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzdc;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/auth/zzcz;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/auth/zzdb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzk:I

    iget-object p4, p1, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Landroid/net/Uri;

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzb:Lcom/google/android/gms/internal/auth/zzcz;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzj:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzm:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzd()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzdc;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static zze(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzdc;->zze:Lcom/google/android/gms/internal/auth/zzda;

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/auth/zzdc;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/auth/zzdc;->zze:Lcom/google/android/gms/internal/auth/zzda;

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/auth/zzdc;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/auth/zzdc;->zze:Lcom/google/android/gms/internal/auth/zzda;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object p0, v3

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/zzda;->zza()Landroid/content/Context;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzcg;->zzd()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzdd;->zzc()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzco;->zze()V

    new-instance v2, Lcom/google/android/gms/internal/auth/zzct;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/auth/zzct;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzdn;->zza(Lcom/google/android/gms/internal/auth/zzdj;)Lcom/google/android/gms/internal/auth/zzdj;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/auth/zzcd;

    .line 6
    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/auth/zzcd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/auth/zzdj;)V

    sput-object v3, Lcom/google/android/gms/internal/auth/zzdc;->zze:Lcom/google/android/gms/internal/auth/zzda;

    sget-object p0, Lcom/google/android/gms/internal/auth/zzdc;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 8
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 9
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_4
    return-void
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzm:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzc:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "flagName must not be null"

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/auth/zzdc;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzk:I

    if-ge v1, v0, :cond_d

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzk:I

    if-ge v1, v0, :cond_c

    sget-object v1, Lcom/google/android/gms/internal/auth/zzdc;->zze:Lcom/google/android/gms/internal/auth/zzda;

    const-string v2, "Must call PhenotypeFlag.init() first"

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzb:Lcom/google/android/gms/internal/auth/zzcz;

    .line 2
    iget-boolean v3, v2, Lcom/google/android/gms/internal/auth/zzcz;->zzf:Z

    .line 3
    iget-object v2, v2, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Landroid/net/Uri;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzda;->zza()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzb:Lcom/google/android/gms/internal/auth/zzcz;

    .line 4
    iget-object v4, v4, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Landroid/net/Uri;

    .line 5
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/auth/zzcq;->zza(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzb:Lcom/google/android/gms/internal/auth/zzcz;

    .line 6
    iget-boolean v2, v2, Lcom/google/android/gms/internal/auth/zzcz;->zzh:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzda;->zza()Landroid/content/Context;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzb:Lcom/google/android/gms/internal/auth/zzcz;

    iget-object v4, v4, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Landroid/net/Uri;

    sget-object v5, Lcom/google/android/gms/internal/auth/zzcs;->zza:Lcom/google/android/gms/internal/auth/zzcs;

    .line 8
    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/auth/zzcg;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/auth/zzcg;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzda;->zza()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzb:Lcom/google/android/gms/internal/auth/zzcz;

    .line 9
    iget-object v4, v4, Lcom/google/android/gms/internal/auth/zzcz;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/auth/zzcs;->zza:Lcom/google/android/gms/internal/auth/zzcs;

    .line 10
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/auth/zzdd;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/auth/zzdd;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdc;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/auth/zzcl;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/auth/zzdc;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_5

    goto :goto_5

    .line 22
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzb:Lcom/google/android/gms/internal/auth/zzcz;

    .line 13
    iget-boolean v4, v2, Lcom/google/android/gms/internal/auth/zzcz;->zze:Z

    if-nez v4, :cond_7

    iget-object v2, v2, Lcom/google/android/gms/internal/auth/zzcz;->zzi:Lcom/google/android/gms/internal/auth/zzdg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzda;->zza()Landroid/content/Context;

    move-result-object v2

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzco;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/zzco;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzb:Lcom/google/android/gms/internal/auth/zzcz;

    .line 15
    iget-boolean v5, v4, Lcom/google/android/gms/internal/auth/zzcz;->zze:Z

    if-eqz v5, :cond_6

    move-object v4, v3

    goto :goto_3

    :cond_6
    iget-object v4, v4, Lcom/google/android/gms/internal/auth/zzcz;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzc:Ljava/lang/String;

    .line 16
    :goto_3
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/auth/zzco;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 17
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/auth/zzdc;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_7
    move-object v2, v3

    :goto_4
    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzj:Ljava/lang/Object;

    .line 12
    :cond_8
    :goto_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzda;->zzb()Lcom/google/android/gms/internal/auth/zzdj;

    move-result-object v1

    .line 18
    invoke-interface {v1}, Lcom/google/android/gms/internal/auth/zzdj;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/zzdh;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzdh;->zzb()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzdh;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/zzci;

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzb:Lcom/google/android/gms/internal/auth/zzcz;

    iget-object v4, v2, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Landroid/net/Uri;

    iget-object v5, v2, Lcom/google/android/gms/internal/auth/zzcz;->zza:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/auth/zzcz;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzc:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v4, v3, v2, v5}, Lcom/google/android/gms/internal/auth/zzci;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzj:Ljava/lang/Object;

    goto :goto_6

    .line 22
    :cond_9
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/auth/zzdc;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    :cond_a
    :goto_6
    iput-object v2, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzl:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzk:I

    goto :goto_7

    .line 25
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_c
    :goto_7
    monitor-exit p0

    goto :goto_8

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_d
    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzl:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzb:Lcom/google/android/gms/internal/auth/zzcz;

    iget-object v0, v0, Lcom/google/android/gms/internal/auth/zzcz;->zzd:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzdc;->zzc:Ljava/lang/String;

    return-object v0
.end method
