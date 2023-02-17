.class public final Lcom/google/android/gms/drive/metadata/internal/zzf;
.super Ljava/lang/Object;


# static fields
.field private static final zzjf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final zzjg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/drive/metadata/internal/zzg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzjf:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzjg:Ljava/util/Map;

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjl:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkr:Lcom/google/android/gms/internal/drive/zzib;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzki:Lcom/google/android/gms/internal/drive/zzhx;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkp:Lcom/google/android/gms/internal/drive/zzia;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzks:Lcom/google/android/gms/internal/drive/zzic;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjy:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjx:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjz:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzka:Lcom/google/android/gms/internal/drive/zzhw;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkb:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjv:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkd:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzke:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkf:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkn:Lcom/google/android/gms/drive/metadata/internal/zzo;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjm:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkk:Lcom/google/android/gms/drive/metadata/zzb;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjo:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjw:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjp:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjq:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjr:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjs:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 40
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkh:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkc:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkj:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkl:Lcom/google/android/gms/drive/metadata/internal/zzu;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkm:Lcom/google/android/gms/drive/metadata/internal/zzu;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 45
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzko:Lcom/google/android/gms/internal/drive/zzhy;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkt:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzku:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzju:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjt:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 50
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkq:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 51
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkg:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjn:Lcom/google/android/gms/internal/drive/zzhv;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 53
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkv:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkw:Lcom/google/android/gms/drive/metadata/internal/zzb;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 55
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkx:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzky:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 57
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkz:Lcom/google/android/gms/internal/drive/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzla:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 59
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzlb:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->zzld:Lcom/google/android/gms/internal/drive/zzig;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 61
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->zzlf:Lcom/google/android/gms/internal/drive/zzij;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 62
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->zzlg:Lcom/google/android/gms/internal/drive/zzii;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 63
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->zzlh:Lcom/google/android/gms/internal/drive/zzil;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 64
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->zzle:Lcom/google/android/gms/internal/drive/zzih;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 65
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->zzli:Lcom/google/android/gms/internal/drive/zzik;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 66
    sget-object v0, Lcom/google/android/gms/internal/drive/zzin;->zzlk:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 67
    sget-object v0, Lcom/google/android/gms/internal/drive/zzin;->zzll:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 68
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zzo;->zzjk:Lcom/google/android/gms/drive/metadata/internal/zzg;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zza(Lcom/google/android/gms/drive/metadata/internal/zzg;)V

    .line 69
    sget-object v0, Lcom/google/android/gms/internal/drive/zzid;->zzlc:Lcom/google/android/gms/drive/metadata/internal/zzg;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->zza(Lcom/google/android/gms/drive/metadata/internal/zzg;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    .line 7
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzjg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/metadata/internal/zzg;

    .line 8
    invoke-interface {v1, p0}, Lcom/google/android/gms/drive/metadata/internal/zzg;->zzb(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static zza(Lcom/google/android/gms/drive/metadata/internal/zzg;)V
    .locals 3

    .line 11
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzjg:Ljava/util/Map;

    invoke-interface {p0}, Lcom/google/android/gms/drive/metadata/internal/zzg;->zzbd()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/drive/metadata/internal/zzg;->zzbd()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "A cleaner for key "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has already been registered"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzjf:Ljava/util/Map;

    invoke-interface {p0}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duplicate field name registered: "

    invoke-interface {p0}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzjf:Ljava/util/Map;

    invoke-interface {p0}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static zzbc()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "*>;>;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzjf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static zzf(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/MetadataField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "*>;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zzf;->zzjf:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/drive/metadata/MetadataField;

    return-object p0
.end method
