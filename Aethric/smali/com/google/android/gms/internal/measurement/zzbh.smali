.class public final Lcom/google/android/gms/internal/measurement/zzbh;
.super Lcom/google/android/gms/internal/measurement/zzaw;
.source "com.google.android.gms:play-services-measurement@@21.2.0"


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzaw;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zza:Ljava/util/List;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl;->zzA:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zza:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl;->zzB:Lcom/google/android/gms/internal/measurement/zzbl;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zza:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl;->zzC:Lcom/google/android/gms/internal/measurement/zzbl;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zza:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl;->zzD:Lcom/google/android/gms/internal/measurement/zzbl;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zza:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl;->zzE:Lcom/google/android/gms/internal/measurement/zzbl;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zza:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl;->zzF:Lcom/google/android/gms/internal/measurement/zzbl;

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zza:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl;->zzG:Lcom/google/android/gms/internal/measurement/zzbl;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zza:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl;->zzan:Lcom/google/android/gms/internal/measurement/zzbl;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/measurement/zzbf;Ljava/util/Iterator;Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbf;->zza(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzg;

    move-result-object v0

    .line 3
    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzae;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Lcom/google/android/gms/internal/measurement/zzae;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzag;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzag;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzag;->zzc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "break"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzap;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzag;->zzc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "return"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzap;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    return-object p0
.end method

.method private static zzd(Lcom/google/android/gms/internal/measurement/zzbf;Lcom/google/android/gms/internal/measurement/zzap;Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzap;->zzl()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbh;->zzc(Lcom/google/android/gms/internal/measurement/zzbf;Ljava/util/Iterator;Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p0

    return-object p0
.end method

.method private static zze(Lcom/google/android/gms/internal/measurement/zzbf;Lcom/google/android/gms/internal/measurement/zzap;Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbh;->zzc(Lcom/google/android/gms/internal/measurement/zzbf;Ljava/util/Iterator;Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-iterable type in for...of loop."

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbl;->zza:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzh;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbl;->ordinal()I

    move-result v0

    const/16 v1, 0x41

    const/4 v2, 0x4

    const-string v3, "return"

    const-string v4, "break"

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v0, v1, :cond_c

    packed-switch v0, :pswitch_data_0

    .line 86
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaw;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbl;->zzG:Lcom/google/android/gms/internal/measurement/zzbl;

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbl;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 61
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/zzat;

    if-eqz p1, :cond_0

    .line 63
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 65
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p3

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbe;

    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/internal/measurement/zzbe;-><init>(Lcom/google/android/gms/internal/measurement/zzg;Ljava/lang/String;)V

    .line 66
    invoke-static {v1, v0, p3}, Lcom/google/android/gms/internal/measurement/zzbh;->zze(Lcom/google/android/gms/internal/measurement/zzbf;Lcom/google/android/gms/internal/measurement/zzap;Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_OF_LET must be a string"

    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbl;->zzF:Lcom/google/android/gms/internal/measurement/zzbl;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbl;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 54
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/zzat;

    if-eqz p1, :cond_1

    .line 56
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 58
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p3

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbd;

    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/internal/measurement/zzbd;-><init>(Lcom/google/android/gms/internal/measurement/zzg;Ljava/lang/String;)V

    .line 59
    invoke-static {v1, v0, p3}, Lcom/google/android/gms/internal/measurement/zzbh;->zze(Lcom/google/android/gms/internal/measurement/zzbf;Lcom/google/android/gms/internal/measurement/zzap;Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p1

    return-object p1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_OF_CONST must be a string"

    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbl;->zzE:Lcom/google/android/gms/internal/measurement/zzbl;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbl;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 47
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/zzat;

    if-eqz p1, :cond_2

    .line 49
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 51
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p3

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbg;

    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/internal/measurement/zzbg;-><init>(Lcom/google/android/gms/internal/measurement/zzg;Ljava/lang/String;)V

    .line 52
    invoke-static {v1, v0, p3}, Lcom/google/android/gms/internal/measurement/zzbh;->zze(Lcom/google/android/gms/internal/measurement/zzbf;Lcom/google/android/gms/internal/measurement/zzap;Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p1

    return-object p1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_OF must be a string"

    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbl;->zzD:Lcom/google/android/gms/internal/measurement/zzbl;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbl;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 24
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p1

    .line 25
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzae;

    if-eqz v0, :cond_8

    .line 27
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzae;

    .line 28
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    .line 29
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzap;

    .line 30
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p3

    .line 31
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzg;->zza()Lcom/google/android/gms/internal/measurement/zzg;

    move-result-object v2

    const/4 v5, 0x0

    .line 32
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 33
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v6

    .line 34
    invoke-virtual {p2, v6}, Lcom/google/android/gms/internal/measurement/zzg;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzg;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzap;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 35
    :cond_3
    :goto_1
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/zzap;->zzg()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 36
    move-object v5, p3

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzae;

    invoke-virtual {p2, v5}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Lcom/google/android/gms/internal/measurement/zzae;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v5

    .line 37
    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/zzag;

    if-eqz v6, :cond_5

    .line 38
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzag;

    .line 39
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzag;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzap;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    goto :goto_3

    .line 40
    :cond_4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzag;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    .line 41
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzg;->zza()Lcom/google/android/gms/internal/measurement/zzg;

    move-result-object v5

    const/4 v6, 0x0

    .line 42
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzc()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 43
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/measurement/zzae;->zze(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v7

    .line 44
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzg;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Lcom/google/android/gms/internal/measurement/zzg;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzap;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 45
    :cond_6
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-object v2, v5

    goto :goto_1

    :cond_7
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzap;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    :goto_3
    return-object v5

    .line 25
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initializer variables in FOR_LET must be an ArrayList"

    .line 26
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbl;->zzC:Lcom/google/android/gms/internal/measurement/zzbl;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbl;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 17
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/zzat;

    if-eqz p1, :cond_9

    .line 19
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 21
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p3

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbe;

    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/internal/measurement/zzbe;-><init>(Lcom/google/android/gms/internal/measurement/zzg;Ljava/lang/String;)V

    .line 22
    invoke-static {v1, v0, p3}, Lcom/google/android/gms/internal/measurement/zzbh;->zzd(Lcom/google/android/gms/internal/measurement/zzbf;Lcom/google/android/gms/internal/measurement/zzap;Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p1

    return-object p1

    .line 17
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_IN_LET must be a string"

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbl;->zzB:Lcom/google/android/gms/internal/measurement/zzbl;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbl;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 10
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/zzat;

    if-eqz p1, :cond_a

    .line 12
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 14
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p3

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbd;

    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/internal/measurement/zzbd;-><init>(Lcom/google/android/gms/internal/measurement/zzg;Ljava/lang/String;)V

    .line 15
    invoke-static {v1, v0, p3}, Lcom/google/android/gms/internal/measurement/zzbh;->zzd(Lcom/google/android/gms/internal/measurement/zzbf;Lcom/google/android/gms/internal/measurement/zzap;Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p1

    return-object p1

    .line 10
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_IN_CONST must be a string"

    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :pswitch_6
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbl;->zzA:Lcom/google/android/gms/internal/measurement/zzbl;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbl;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 3
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/zzat;

    if-eqz p1, :cond_b

    .line 5
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 7
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p3

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbg;

    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/internal/measurement/zzbg;-><init>(Lcom/google/android/gms/internal/measurement/zzg;Ljava/lang/String;)V

    .line 8
    invoke-static {v1, v0, p3}, Lcom/google/android/gms/internal/measurement/zzbh;->zzd(Lcom/google/android/gms/internal/measurement/zzbf;Lcom/google/android/gms/internal/measurement/zzap;Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p1

    return-object p1

    .line 3
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_IN must be a string"

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_c
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbl;->zzan:Lcom/google/android/gms/internal/measurement/zzbl;

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbl;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    .line 68
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzap;

    .line 69
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    .line 70
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzap;

    .line 71
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzap;

    .line 72
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p3

    .line 73
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzap;->zzg()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    .line 74
    :cond_d
    move-object v1, p3

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzae;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Lcom/google/android/gms/internal/measurement/zzae;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    .line 75
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzag;

    if-eqz v2, :cond_f

    .line 76
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzag;

    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzag;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzap;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    goto :goto_5

    .line 78
    :cond_e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzag;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_5

    .line 79
    :cond_f
    :goto_4
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzap;->zzg()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 80
    move-object v1, p3

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzae;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Lcom/google/android/gms/internal/measurement/zzae;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    .line 81
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzag;

    if-eqz v2, :cond_11

    .line 82
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzag;

    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzag;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzap;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    goto :goto_5

    .line 84
    :cond_10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzag;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_5

    .line 85
    :cond_11
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    goto :goto_4

    :cond_12
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzap;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    :goto_5
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
