.class final Lcom/google/android/gms/internal/auth/zzgj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"


# static fields
.field private static final zza:Ljava/lang/Class;

.field private static final zzb:Lcom/google/android/gms/internal/auth/zzgy;

.field private static final zzc:Lcom/google/android/gms/internal/auth/zzgy;

.field private static final zzd:Lcom/google/android/gms/internal/auth/zzgy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessage"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/auth/zzgj;->zza:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzgj;->zzj(Z)Lcom/google/android/gms/internal/auth/zzgy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/zzgj;->zzb:Lcom/google/android/gms/internal/auth/zzgy;

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzgj;->zzj(Z)Lcom/google/android/gms/internal/auth/zzgy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/zzgj;->zzc:Lcom/google/android/gms/internal/auth/zzgy;

    new-instance v0, Lcom/google/android/gms/internal/auth/zzha;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzha;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzgj;->zzd:Lcom/google/android/gms/internal/auth/zzgy;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/auth/zzgy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgj;->zzb:Lcom/google/android/gms/internal/auth/zzgy;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/auth/zzgy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgj;->zzc:Lcom/google/android/gms/internal/auth/zzgy;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/auth/zzgy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgj;->zzd:Lcom/google/android/gms/internal/auth/zzgy;

    return-object v0
.end method

.method static zzd(ILjava/util/List;Lcom/google/android/gms/internal/auth/zzex;Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzgy;)Ljava/lang/Object;
    .locals 5

    if-nez p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4
    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/zzex;->zza()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v1, v2, :cond_1

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p0, v3, p3, p4}, Lcom/google/android/gms/internal/auth/zzgj;->zze(IILjava/lang/Object;Lcom/google/android/gms/internal/auth/zzgy;)Ljava/lang/Object;

    move-result-object p3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-ne v2, v0, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object p3

    .line 8
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10
    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/zzex;->zza()Z

    move-result v1

    if-nez v1, :cond_6

    .line 11
    invoke-static {p0, v0, p3, p4}, Lcom/google/android/gms/internal/auth/zzgj;->zze(IILjava/lang/Object;Lcom/google/android/gms/internal/auth/zzgy;)Ljava/lang/Object;

    move-result-object p3

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_7
    :goto_3
    return-object p3
.end method

.method static zze(IILjava/lang/Object;Lcom/google/android/gms/internal/auth/zzgy;)Ljava/lang/Object;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/auth/zzgy;->zzc()Ljava/lang/Object;

    move-result-object p2

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p3, p2, p0, v0, v1}, Lcom/google/android/gms/internal/auth/zzgy;->zzd(Ljava/lang/Object;IJ)V

    return-object p2
.end method

.method static zzf(Lcom/google/android/gms/internal/auth/zzgy;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzgy;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/auth/zzgy;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzgy;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgy;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static zzg(Ljava/lang/Class;)V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/auth/zzeu;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgj;->zza:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    .line 3
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static zzh(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static zzi(Lcom/google/android/gms/internal/auth/zzfr;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/auth/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/auth/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 2
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/auth/zzfr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-static {p1, p3, p4, p0}, Lcom/google/android/gms/internal/auth/zzhi;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private static zzj(Z)Lcom/google/android/gms/internal/auth/zzgy;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.protobuf.UnknownFieldSetSchema"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth/zzgy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    return-object v0
.end method
