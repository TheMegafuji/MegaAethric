.class final Lcom/google/android/gms/internal/measurement/zzjn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzng;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzjm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzjm;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzkn;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zzjm;->zza:Lcom/google/android/gms/internal/measurement/zzjn;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzjm;)Lcom/google/android/gms/internal/measurement/zzjn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zza:Lcom/google/android/gms/internal/measurement/zzjn;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjn;-><init>(Lcom/google/android/gms/internal/measurement/zzjm;)V

    return-object v0
.end method


# virtual methods
.method public final zzA(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    add-int v1, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzp(II)V

    return-void
.end method

.method public final zzB(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzA(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int v1, p3, p3

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzp(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzC(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    add-long v1, p2, p2

    const/16 v3, 0x3f

    shr-long/2addr p2, v3

    xor-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzr(IJ)V

    return-void
.end method

.method public final zzD(ILjava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3f

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v2, 0x2

    invoke-virtual {p3, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzB(J)I

    move-result v2

    add-int/2addr p3, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 8
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzs(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-virtual {p3, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzr(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzE(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    return-void
.end method

.method public final zzF(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzm(ILjava/lang/String;)V

    return-void
.end method

.method public final zzG(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzku;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzku;

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzku;->zzf(I)Ljava/lang/Object;

    move-result-object v2

    .line 7
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 8
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzm(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 9
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzje;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zze(ILcom/google/android/gms/internal/measurement/zzje;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzm(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzH(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzp(II)V

    return-void
.end method

.method public final zzI(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzA(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzp(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzJ(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzr(IJ)V

    return-void
.end method

.method public final zzK(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzB(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzs(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzr(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzb(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzd(IZ)V

    return-void
.end method

.method public final zzc(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzb(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzd(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzd(ILcom/google/android/gms/internal/measurement/zzje;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjm;->zze(ILcom/google/android/gms/internal/measurement/zzje;)V

    return-void
.end method

.method public final zze(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzje;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zze(ILcom/google/android/gms/internal/measurement/zzje;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzf(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzh(IJ)V

    return-void
.end method

.method public final zzg(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    .line 8
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    .line 9
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    .line 2
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzh(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    return-void
.end method

.method public final zzi(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzj(II)V

    return-void
.end method

.method public final zzj(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzv(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzk(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzj(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzk(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzf(II)V

    return-void
.end method

.method public final zzl(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzg(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzf(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzm(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzh(IJ)V

    return-void
.end method

.method public final zzn(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzo(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzf(II)V

    return-void
.end method

.method public final zzp(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    .line 8
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 10
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    .line 9
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzg(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 2
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzf(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzlm;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzjm;->zza:Lcom/google/android/gms/internal/measurement/zzjn;

    .line 2
    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzlx;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzng;)V

    const/4 p2, 0x4

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    return-void
.end method

.method public final zzr(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzj(II)V

    return-void
.end method

.method public final zzs(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzv(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzk(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzj(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzt(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzr(IJ)V

    return-void
.end method

.method public final zzu(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzB(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzs(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzr(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzlm;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjj;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjj;->zzq(I)V

    .line 3
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzio;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzbr(Lcom/google/android/gms/internal/measurement/zzlx;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjj;->zzq(I)V

    iget-object p1, v0, Lcom/google/android/gms/internal/measurement/zzjj;->zza:Lcom/google/android/gms/internal/measurement/zzjn;

    .line 4
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzlx;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzng;)V

    return-void
.end method

.method public final zzw(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzf(II)V

    return-void
.end method

.method public final zzx(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzg(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzf(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzy(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzh(IJ)V

    return-void
.end method

.method public final zzz(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjm;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjm;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
