.class Lcom/koushikdutta/async/future/Converter$Converters;
.super Lcom/koushikdutta/async/future/Converter$EnsureHashMap;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/future/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Converters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/Converter$EnsureHashMap<",
        "Lcom/koushikdutta/async/future/Converter$MimedType<",
        "TF;>;",
        "Lcom/koushikdutta/async/future/Converter$ConverterTransformers<",
        "TF;TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/koushikdutta/async/future/Converter$EnsureHashMap;-><init>()V

    return-void
.end method

.method private static add(Lcom/koushikdutta/async/future/Converter$ConverterTransformers;Lcom/koushikdutta/async/future/Converter$ConverterTransformers;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/future/Converter$ConverterTransformers<",
            "TF;TT;>;",
            "Lcom/koushikdutta/async/future/Converter$ConverterTransformers<",
            "TF;TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getAll(Lcom/koushikdutta/async/future/Converter$MimedType;)Lcom/koushikdutta/async/future/Converter$ConverterTransformers;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Converter$MimedType<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Converter$ConverterTransformers<",
            "TF;TT;>;"
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;-><init>()V

    .line 154
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Converter$Converters;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/future/Converter$MimedType;

    .line 155
    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/future/Converter$MimedType;->isTypeOf(Lcom/koushikdutta/async/future/Converter$MimedType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/future/Converter$Converters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;

    invoke-static {v0, v2}, Lcom/koushikdutta/async/future/Converter$Converters;->add(Lcom/koushikdutta/async/future/Converter$ConverterTransformers;Lcom/koushikdutta/async/future/Converter$ConverterTransformers;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected makeDefault()Lcom/koushikdutta/async/future/Converter$ConverterTransformers;
    .locals 1

    .line 143
    new-instance v0, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic makeDefault()Ljava/lang/Object;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Converter$Converters;->makeDefault()Lcom/koushikdutta/async/future/Converter$ConverterTransformers;

    move-result-object v0

    return-object v0
.end method
