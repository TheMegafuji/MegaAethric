.class public final synthetic Lcom/google/firebase/crashlytics/internal/metadata/-$$Lambda$UserMetadata$SerializeableKeysMap$t8yxwxTX42KWlcDDq94pEDHVyoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata$SerializeableKeysMap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata$SerializeableKeysMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/metadata/-$$Lambda$UserMetadata$SerializeableKeysMap$t8yxwxTX42KWlcDDq94pEDHVyoo;->f$0:Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata$SerializeableKeysMap;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/-$$Lambda$UserMetadata$SerializeableKeysMap$t8yxwxTX42KWlcDDq94pEDHVyoo;->f$0:Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata$SerializeableKeysMap;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata$SerializeableKeysMap;->lambda$scheduleSerializationTaskIfNeeded$0$UserMetadata$SerializeableKeysMap()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
