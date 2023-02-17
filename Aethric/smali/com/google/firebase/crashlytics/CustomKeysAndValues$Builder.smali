.class public Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;
.super Ljava/lang/Object;
.source "CustomKeysAndValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/CustomKeysAndValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private keysAndValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;->keysAndValues:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;)Ljava/util/Map;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;->keysAndValues:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/firebase/crashlytics/CustomKeysAndValues;
    .locals 1

    .line 74
    new-instance v0, Lcom/google/firebase/crashlytics/CustomKeysAndValues;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/CustomKeysAndValues;-><init>(Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;)V

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;->keysAndValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putDouble(Ljava/lang/String;D)Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;->keysAndValues:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;->keysAndValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;->keysAndValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;->keysAndValues:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;->keysAndValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
