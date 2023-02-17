.class public final Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzjd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/drive/metadata/CustomPropertyKey;",
            "Lcom/google/android/gms/drive/metadata/internal/zzc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zzjd:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;
    .locals 2

    const-string v0, "key"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zzjd:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/drive/metadata/internal/zzc;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/zzc;-><init>(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/drive/metadata/internal/zzc;)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;
    .locals 2

    const-string v0, "property"

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zzjd:Ljava/util/Map;

    .line 8
    iget-object v1, p1, Lcom/google/android/gms/drive/metadata/internal/zzc;->zzje:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    .line 9
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzbb()Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;
    .locals 2

    .line 11
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    iget-object v1, p0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zzjd:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
