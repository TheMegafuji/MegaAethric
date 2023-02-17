.class public final Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-identity@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identity/intents/UserAddressRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/identity/intents/UserAddressRequest;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;Lcom/google/android/gms/identity/intents/zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zza:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllowedCountrySpecification(Lcom/google/android/gms/identity/intents/model/CountrySpecification;)Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zza:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zza:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zza:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zza:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAllowedCountrySpecifications(Ljava/util/Collection;)Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;)",
            "Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zza:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zza:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zza:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zza:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/identity/intents/UserAddressRequest;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zza:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zza:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zza:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zza:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    return-object v0
.end method
