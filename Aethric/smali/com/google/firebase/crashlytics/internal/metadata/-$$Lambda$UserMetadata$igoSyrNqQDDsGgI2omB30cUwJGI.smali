.class public final synthetic Lcom/google/firebase/crashlytics/internal/metadata/-$$Lambda$UserMetadata$igoSyrNqQDDsGgI2omB30cUwJGI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/metadata/-$$Lambda$UserMetadata$igoSyrNqQDDsGgI2omB30cUwJGI;->f$0:Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/-$$Lambda$UserMetadata$igoSyrNqQDDsGgI2omB30cUwJGI;->f$0:Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;->lambda$setUserId$0$UserMetadata()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
