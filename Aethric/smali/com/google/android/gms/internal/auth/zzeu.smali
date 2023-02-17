.class public abstract Lcom/google/android/gms/internal/auth/zzeu;
.super Lcom/google/android/gms/internal/auth/zzdp;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/auth/zzeu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/auth/zzes<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/auth/zzdp<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/auth/zzgz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzeu;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzdp;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgz;->zza()Lcom/google/android/gms/internal/auth/zzgz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzeu;->zzc:Lcom/google/android/gms/internal/auth/zzgz;

    return-void
.end method

.method static zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzeu;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzeu;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/zzeu;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/google/android/gms/internal/auth/zzeu;->zzb:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/zzeu;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    .line 3
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzhi;->zze(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/zzeu;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/auth/zzeu;->zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/auth/zzeu;

    if-eqz v0, :cond_1

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/auth/zzeu;->zzb:Ljava/util/Map;

    .line 8
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static zzb(Lcom/google/android/gms/internal/auth/zzeu;[B)Lcom/google/android/gms/internal/auth/zzeu;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/auth/zzfa;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/auth/zzek;->zza:Lcom/google/android/gms/internal/auth/zzek;

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/auth/zzeu;->zzj(Lcom/google/android/gms/internal/auth/zzeu;[BIILcom/google/android/gms/internal/auth/zzek;)Lcom/google/android/gms/internal/auth/zzeu;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/auth/zzeu;->zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_3

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzge;->zza()Lcom/google/android/gms/internal/auth/zzge;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/auth/zzge;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgh;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/auth/zzgh;->zzi(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_2

    if-eq v0, v2, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/auth/zzeu;->zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/auth/zzgx;

    .line 7
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/auth/zzgx;-><init>(Lcom/google/android/gms/internal/auth/zzfw;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzgx;->zza()Lcom/google/android/gms/internal/auth/zzfa;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/auth/zzfa;->zze(Lcom/google/android/gms/internal/auth/zzfw;)Lcom/google/android/gms/internal/auth/zzfa;

    throw p1

    :cond_4
    :goto_1
    return-object p0
.end method

.method protected static zzc()Lcom/google/android/gms/internal/auth/zzey;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgf;->zze()Lcom/google/android/gms/internal/auth/zzgf;

    move-result-object v0

    return-object v0
.end method

.method static varargs zze(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 5
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 6
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 7
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 4
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 8
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zzf(Lcom/google/android/gms/internal/auth/zzfw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/auth/zzgg;

    const-string v0, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzgg;-><init>(Lcom/google/android/gms/internal/auth/zzfw;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method protected static zzg(Ljava/lang/Class;Lcom/google/android/gms/internal/auth/zzeu;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzeu;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zzj(Lcom/google/android/gms/internal/auth/zzeu;[BIILcom/google/android/gms/internal/auth/zzek;)Lcom/google/android/gms/internal/auth/zzeu;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/auth/zzfa;
        }
    .end annotation

    const/4 p2, 0x4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p2, v0, v0}, Lcom/google/android/gms/internal/auth/zzeu;->zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth/zzeu;

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzge;->zza()Lcom/google/android/gms/internal/auth/zzge;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/auth/zzge;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgh;

    move-result-object p2

    new-instance v5, Lcom/google/android/gms/internal/auth/zzds;

    .line 4
    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/auth/zzds;-><init>(Lcom/google/android/gms/internal/auth/zzek;)V

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/zzgh;->zzg(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/zzds;)V

    .line 5
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/auth/zzgh;->zze(Ljava/lang/Object;)V

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/auth/zzeu;->zza:I

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 7
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/auth/zzfa; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/auth/zzgx; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfa;->zzf()Lcom/google/android/gms/internal/auth/zzfa;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/auth/zzfa;->zze(Lcom/google/android/gms/internal/auth/zzfw;)Lcom/google/android/gms/internal/auth/zzfa;

    throw p1

    :catch_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/auth/zzfa;

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth/zzfa;

    throw p0

    .line 12
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/auth/zzfa;

    .line 11
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/auth/zzfa;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/auth/zzfa;->zze(Lcom/google/android/gms/internal/auth/zzfw;)Lcom/google/android/gms/internal/auth/zzfa;

    throw p2

    :catch_2
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzgx;->zza()Lcom/google/android/gms/internal/auth/zzfa;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/auth/zzfa;->zze(Lcom/google/android/gms/internal/auth/zzfw;)Lcom/google/android/gms/internal/auth/zzfa;

    throw p1

    :catch_3
    move-exception p1

    .line 13
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/auth/zzfa;->zze(Lcom/google/android/gms/internal/auth/zzfw;)Lcom/google/android/gms/internal/auth/zzfa;

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzge;->zza()Lcom/google/android/gms/internal/auth/zzge;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzge;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgh;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/auth/zzeu;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/auth/zzgh;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/auth/zzeu;->zza:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzge;->zza()Lcom/google/android/gms/internal/auth/zzge;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzge;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgh;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/auth/zzgh;->zza(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/auth/zzeu;->zza:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/auth/zzfy;->zza(Lcom/google/android/gms/internal/auth/zzfw;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzd()Lcom/google/android/gms/internal/auth/zzfv;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/auth/zzeu;->zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/auth/zzes;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/auth/zzes;->zze(Lcom/google/android/gms/internal/auth/zzeu;)Lcom/google/android/gms/internal/auth/zzes;

    return-object v0
.end method

.method public final synthetic zzh()Lcom/google/android/gms/internal/auth/zzfw;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/auth/zzeu;->zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/auth/zzeu;

    return-object v0
.end method

.method protected abstract zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method
